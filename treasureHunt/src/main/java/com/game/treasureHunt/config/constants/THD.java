package com.game.treasureHunt.config.constants;
/**
 * 10 questions, 10 answers, 5 gifts
 * 10 questions in each level and only once a level can be selected
 * answer is common for all the questions
 * Game flow --> Q1 -> A1 -> Q2 -> A2 -> G1 ->
 * Q3 -> A3 -> Q4 -> A4 -> G2 ->
 * Q5 -> A5 -> Q6 -> A6 -> G3 ->
 * Q7 -> A7 -> Q8 -> A8 -> G4 ->
 * Q9 -> A9 -> Q10 -> A10 -> G5
 * */
public interface THD {
    interface EASYQUESTIONCONSTANTS {
        public static String THDQuestion_Easy_Q1 = "Hey the word of the day," +
                "<br>Sun is in the east " +
                "<br>earth is us";
        public static String THDQuestion_Easy_Q2 = "Easy2";
        public static String THDQuestion_Easy_Q3 = "Easy3";
        public static String THDQuestion_Easy_Q4 = "Easy4";
        public static String THDQuestion_Easy_Q5 = "Easy5";
        public static String THDQuestion_Easy_Q6 = "Easy6";
        public static String THDQuestion_Easy_Q7 = "Easy7";
        public static String THDQuestion_Easy_Q8 = "Easy8";
        public static String THDQuestion_Easy_Q9 = "Easy9";
        public static String THDQuestion_Easy_Q10 = "Easy10";
    }
    interface MEDIUMQUESTIONCONSTANTS {
        public static String THDQuestion_Medium_Q1 = "Medium1";
        public static String THDQuestion_Medium_Q2 = "Medium2";
        public static String THDQuestion_Medium_Q3 = "Medium3";
        public static String THDQuestion_Medium_Q4 = "Medium4";
        public static String THDQuestion_Medium_Q5 = "Medium5";
        public static String THDQuestion_Medium_Q6 = "Medium6";
        public static String THDQuestion_Medium_Q7 = "Medium7";
        public static String THDQuestion_Medium_Q8 = "Medium8";
        public static String THDQuestion_Medium_Q9 = "Medium9";
        public static String THDQuestion_Medium_Q10 = "Medium10";
    }
    interface HARDQUESTIONCONSTANTS {
        public static String THDQuestion_Difficult_Q1 = "Hard1";
        public static String THDQuestion_Difficult_Q2 = "Hard2";
        public static String THDQuestion_Difficult_Q3 = "Hard3";
        public static String THDQuestion_Difficult_Q4 = "Hard4";
        public static String THDQuestion_Difficult_Q5 = "Hard5";
        public static String THDQuestion_Difficult_Q6 = "Hard6";
        public static String THDQuestion_Difficult_Q7 = "Hard7";
        public static String THDQuestion_Difficult_Q8 = "Hard8";
        public static String THDQuestion_Difficult_Q9 = "Hard9";
        public static String THDQuestion_Difficult_Q10 = "Hard10";
    }

    interface ANSWERCONSTANTS{
        public static String A1 = "A1";
        public static String A2 = "A2";
        public static String A3 = "A3";
        public static String A4 = "A4";
        public static String A5 = "A5";
        public static String A6 = "A6";
        public static String A7 = "A7";
        public static String A8 = "A8";
        public static String A9 = "A9";
        public static String A10 = "A10";
    }
    interface GIFTCONSTANTS{
        public static String G1 ="G1"; //happy birthday
        public static String G2 ="G2"; // gold
        public static String G3 ="G3"; // pen
        public static String G4 ="G4"; // book pin
        public static String G5 ="G5"; // book
    }
}
