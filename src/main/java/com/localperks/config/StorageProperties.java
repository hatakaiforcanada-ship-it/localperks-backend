package com.localperks.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.nio.file.Path;
import java.nio.file.Paths;

@Component
@ConfigurationProperties(prefix = "localperks.storage")
public class StorageProperties {

    private Path imageDir = Paths.get("data", "images");

    public Path getImageDir() {
        return imageDir;
    }

    public void setImageDir(Path imageDir) {
        this.imageDir = imageDir;
    }
}
