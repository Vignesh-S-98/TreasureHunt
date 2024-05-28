package com.game.treasureHunt.config.constants;

public enum THDRatings
{
    EASY("Easy"),
    MEDIUM("Medium"),
    HARD("Hard");

    private final String rating;

    THDRatings(String rating) {
        this.rating = rating;
    }

    public String getRating() {
        return rating;
    }
}
