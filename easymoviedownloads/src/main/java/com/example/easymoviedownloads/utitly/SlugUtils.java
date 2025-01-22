package com.example.easymoviedownloads.utitly;

import java.text.Normalizer;
import java.util.Locale;
import java.util.regex.Pattern;

/**
 * Author: Naveen Saini
 * Date: 11-Jan-2025	
 */
public class SlugUtils {
	private static final Pattern NONLATIN = Pattern.compile("[^\\w-]");
    private static final Pattern WHITESPACE = Pattern.compile("[\\s]");

    public static String generateSlug(String input) {
        String noWhitespace = WHITESPACE.matcher(input).replaceAll("-");
        String normalized = Normalizer.normalize(noWhitespace, Normalizer.Form.NFD);
        String slug = NONLATIN.matcher(normalized).replaceAll("");
        return slug.toLowerCase(Locale.ENGLISH);
    }

}
