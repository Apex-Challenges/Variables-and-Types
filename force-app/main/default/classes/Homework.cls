public with sharing class Homework 
{
    // Declare a variable to hold the postcode of Ginetta House - as
    // the office cannot move, this should be immutable
    final String BG_POSTCODE = 'CM8 1BE';

    // Declare a string that is initialised from an Integer
    String fromInteger = String.valueOf(1);
    
    public void newYearsEve()
    {
        // Create a variable representing the time 12:30:25 in the local 
        // timezone and use this time to create a DateTime for the date 
        // 12/31/2021
        Time nyeTime = Time.newInstance(12, 30, 25, 00);
        Date nyeDate = Date.newInstance(2021, 12, 31);
        DateTime nyeDateTime = DateTime.newInstance(nyeDate, nyeTime);

        DateTime expected = DateTime.newInstance(2021, 12, 31, 12, 30, 25);
        System.assertEquals(expected, nyeDateTime);
    }

    public void castAccount()
    {
        // Create an sobject variable initialised to a new Account. 
        // Create an account variable that is initialised by casting the 
        // sobject variable.
        sObject generic = new Account();
        Account acc = (Account) generic;
    }    

    public void createBlob()
    {
        // Create a Blob from the characters ‘I am a Blob’
        Blob mrBlobby = Blob.valueof('I am a Blob');
    }

    public void createId()
    {
        // Create an ID with the value ‘00D180000001s0LEAQ', convert 
        // this to the 15 character version.
        Id myId = Id.valueOf('00D180000001s0LEAQ');
        myId = myId.to15();
        
        System.assertEquals('00D180000001s0L', myId);
    }

    public void sliceOfPi()
    {
        // Create a Decimal with the value of PI to 5 decimal places.
        Decimal piTo5DP = 3.14159;
        // Use the built-in method to convert it to 2 decimal places.
        Decimal piTo2DP = piTo5DP.setScale(2);

        System.assertEquals(3.14, piTo2DP);
    }

    public void whitespace()
    {
        // Create a String variable. 
        String withWhitespace;
        // Assign it the value ‘     BrightGen Limited   ‘. 
        withWhitespace = '     BrightGen Limited   ';
        // Use a built-in method to create a new String with the 
        // whitespace at the start and end removed.
        String noWhitespace = withWhitespace.normalizeSpace();

        System.assertEquals('BrightGen Limited', noWhitespace);
    }

    public void intFromDouble()
    {
        // Create a Double with a value of 100.245. 
        Double myDouble = 100.245;
        // Convert this to an integer using a built-in method
        Integer intFromDouble = myDouble.intValue();
        // Convert this to another integer using casting.
        Integer castInt = (Integer) intFromDouble;

        System.assertEquals(100, intFromDouble);
        System.assertEquals(100, castInt);
    }


    public void twoAtOnce()
    {
        // Declare two Integers, with the values 6 and 7, in a single 
        // statement.
        Integer firstInt = 6, nextInt = 7;
    }

    public void booleanFromString()
    {
        // Create a boolean whose value is initialised from the text
        // ‘true’.
        Boolean fromString = Boolean.valueOf('true');
    }

    public void reverse()
    {
        // Create a string with the value ‘1234567890’ 
        String reverseMe = '1234567890';
        // Use a built-in method to convert to ‘0987654321’
        String reversed = reverseMe.reverse();

        System.assertEquals('0987654321', reversed);
    }

    public void findApex(String candidate) 
    {
        // Find the position of the substring “Apex” in candidate
        Integer positionOfApex = candidate.indexOf('Apex');
    }

    public void get10And15(String candidate)
    {
        // Extract the 10th and 15th characters from a string
        String tenthChar = candidate.substring(9, 10);
        String fifthteenthChar = candidate.substring(14, 15);
    }

    public void monthsBetween(Date startDate)
    {
        // Create variable endDate for 25/12/2024
        Date endDate = date.newinstance(2024, 12, 25);
        // Use a built-in method to determine the number of months 
        // between the start and end dates.
        Integer monthsBetween = startDate.monthsBetween(endDate);
    }
}