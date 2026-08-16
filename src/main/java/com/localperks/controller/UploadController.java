package com.localperks.controller;

import cn.hutool.core.util.StrUtil;
import com.localperks.config.StorageProperties;
import com.localperks.dto.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.UUID;

@Slf4j
@RestController
@RequestMapping("/uploads")
public class UploadController {

    private final Path imageRoot;

    public UploadController(StorageProperties storageProperties) {
        this.imageRoot = storageProperties.getImageDir().toAbsolutePath().normalize();
    }

    @PostMapping("/blog")
    public Result uploadImage(@RequestParam("file") MultipartFile image) {
        if (image.isEmpty()) {
            return Result.fail("The uploaded image is empty.");
        }

        try {
            String fileName = createNewFileName(image.getOriginalFilename());
            Path target = resolveInsideImageRoot(fileName);
            Files.createDirectories(target.getParent());
            image.transferTo(target.toFile());
            log.debug("Image uploaded: {}", fileName);
            return Result.ok(fileName);
        } catch (IOException e) {
            throw new IllegalStateException("Failed to store the uploaded image.", e);
        }
    }

    @DeleteMapping("/blog")
    public Result deleteBlogImage(@RequestParam("name") String fileName) {
        try {
            Path target = resolveInsideImageRoot(fileName);
            if (Files.isDirectory(target)) {
                return Result.fail("Invalid image name.");
            }
            Files.deleteIfExists(target);
            return Result.ok();
        } catch (IOException e) {
            throw new IllegalStateException("Failed to delete the image.", e);
        }
    }

    private String createNewFileName(String originalFilename) {
        String safeOriginalName = originalFilename == null ? "image" : originalFilename;
        String suffix = StrUtil.subAfter(safeOriginalName, ".", true);
        String extension = StrUtil.isBlank(suffix) ? "bin" : suffix.toLowerCase();
        String name = UUID.randomUUID().toString();
        int hash = name.hashCode();
        int firstDirectory = hash & 0xF;
        int secondDirectory = (hash >> 4) & 0xF;
        return String.format("/blogs/%d/%d/%s.%s", firstDirectory, secondDirectory, name, extension);
    }

    private Path resolveInsideImageRoot(String fileName) {
        String relativeName = fileName.replace('\\', '/').replaceFirst("^/+", "");
        Path target = imageRoot.resolve(relativeName).normalize();
        if (!target.startsWith(imageRoot)) {
            throw new IllegalArgumentException("Invalid image path.");
        }
        return target;
    }
}
