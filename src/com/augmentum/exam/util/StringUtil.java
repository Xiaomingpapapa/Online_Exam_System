package com.augmentum.exam.util;

public class StringUtil {

    public static boolean isEmpty (String data) {
        if (data == null || data.equals("")) {
            return true;
        }

        return false;
    }
}
