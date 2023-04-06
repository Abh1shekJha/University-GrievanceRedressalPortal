package net.grp.model;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

public class UniqueReferenceNumberGenerator {
    public static String generateReferenceNumber(String category, Timestamp timestamp) {
        // Get current date and time
        Timestamp now = timestamp;

        // Format the date and time as string
        // Create a SimpleDateFormat object with the desired format
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmmss");

        // Format the timestamp as a string
        String formattedTimestamp = dateFormat.format(timestamp);
        System.out.println("f: "+formattedTimestamp);
        // Generate a random number between 100 and 999
        Random rand = new Random();
        int randomNumber = rand.nextInt(899) + 100;

        // Combine the formatted date and time with the random number to create the reference number
        String referenceNumber = "GR"+category.substring(0, 4).toUpperCase()+"-" + formattedTimestamp + "-" + randomNumber;

        return referenceNumber;
    }
    
    public static void main(String[] args) {
		System.out.println(generateReferenceNumber("cate", new Timestamp(System.currentTimeMillis())));
		System.out.println(new Timestamp(System.currentTimeMillis()));
	}
}
