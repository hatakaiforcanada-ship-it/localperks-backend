package com.localperks.utils;

import cn.hutool.core.util.StrUtil;

public final class AuthTokenUtils {

    private static final String BEARER_PREFIX = "Bearer ";

    private AuthTokenUtils() {
    }

    public static String extractToken(String authorizationHeader) {
        if (StrUtil.isBlank(authorizationHeader)) {
            return null;
        }

        String value = authorizationHeader.trim();
        if (value.equalsIgnoreCase("Bearer")) {
            return null;
        }
        if (value.regionMatches(true, 0, BEARER_PREFIX, 0, BEARER_PREFIX.length())) {
            value = value.substring(BEARER_PREFIX.length()).trim();
        }
        return StrUtil.isBlank(value) ? null : value;
    }
}
