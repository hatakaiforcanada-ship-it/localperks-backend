package com.localperks.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

class AuthTokenUtilsTest {

    @Test
    void extractsBearerToken() {
        assertEquals("abc123", AuthTokenUtils.extractToken("Bearer abc123"));
        assertEquals("abc123", AuthTokenUtils.extractToken("bearer abc123"));
    }

    @Test
    void supportsLegacyRawTokenDuringMigration() {
        assertEquals("abc123", AuthTokenUtils.extractToken("abc123"));
    }

    @Test
    void rejectsBlankHeaders() {
        assertNull(AuthTokenUtils.extractToken(null));
        assertNull(AuthTokenUtils.extractToken("   "));
        assertNull(AuthTokenUtils.extractToken("Bearer   "));
    }
}
