package com.localperks.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

class RegexUtilsTest {

    @Test
    void acceptsE164PhoneNumbers() {
        assertFalse(RegexUtils.isPhoneInvalid("+14155552671"));
        assertFalse(RegexUtils.isPhoneInvalid("+819012345678"));
        assertFalse(RegexUtils.isPhoneInvalid("+8613800138000"));
    }

    @Test
    void rejectsNonE164PhoneNumbers() {
        assertTrue(RegexUtils.isPhoneInvalid("13800138000"));
        assertTrue(RegexUtils.isPhoneInvalid("+0123456789"));
        assertTrue(RegexUtils.isPhoneInvalid("+1 415 555 2671"));
        assertTrue(RegexUtils.isPhoneInvalid(""));
    }
}
