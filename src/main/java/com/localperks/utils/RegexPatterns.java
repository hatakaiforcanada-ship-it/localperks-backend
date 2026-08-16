package com.localperks.utils;

/**
 */
public abstract class RegexPatterns {
    /**
     * International phone number in E.164 format, for example +14155552671.
     */
    public static final String PHONE_REGEX = "^\\+[1-9]\\d{7,14}$";
    public static final String EMAIL_REGEX = "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
    public static final String PASSWORD_REGEX = "^\\w{4,32}$";
    public static final String VERIFY_CODE_REGEX = "^[a-zA-Z\\d]{6}$";

}
