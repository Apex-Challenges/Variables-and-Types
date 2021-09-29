public with sharing class Homework {
    // Declare a variable to hold the postcode of Ginetta House - as
    // the office cannot move, this should be immutable
    public static final String bgPostCode = 'CM8 1BE';

    // Declare a string that is initialised from an Integer
    public static String strFromInt = String.valueOf(Integer.valueOf('1')); // 😀


    public void newYearsEve()
    {
        // Create a variable representing the time 12:30:25 in the local 
        // timezone and use this time to create a DateTime for the date 
        // 12/31/2021
        Time t = Time.newInstance(12, 30, 25, 000);
        Date d = Date.newInstance(2021, 12, 31);
        DateTime theTimeIsNigh = DateTime.newInstance(d, t);

        System.debug(LoggingLevel.ERROR, '\n####  DateTime => ' + theTimeIsNigh );

    }

    public void castAccount()
    {
        // Create an sobject variable initialised to a new Account. 
        // Create an account variable that is initialised by casting the 
        // sobject variable.

        SObject sobjAcc = new Account();
        Account acc = (Account) sobjAcc;
    }    

    public void createBlob()
    {
        // Create a Blob from the characters ‘I am a Blob’
        Blob bob = Blob.valueOf('I am a Blob');
    }

    public void createId()
    {
        // Create an ID with the value ‘00D180000001s0LEAQ', convert 
        // this to the 15 character version.
        Id myId = '00D180000001s0LEAQ';
        Id myId15 = myId.to15(); //TODO:
        String idStr =  myId.to15();
        System.assertNotEquals(15, String.valueOf(myId15).length()); //internally it's all 18 anyway
        System.assertEquals(15, idSTr.length());
    }

    public void sliceOfPi()
    {
        // Create a Decimal with the value of PI to 5 decimal places.
        Decimal pi = 3.14159;
        // Use the built-in method to convert it to 2 decimal places.
        pi = pi.setScale(2);
        System.debug('sliceOfPi => ' + pi);
        System.assertEquals(3.14, pi);
    }

    public void whitespace()
    {
        // Create a String variable. 
        String nameWithSpaces;
        // Assign it the value ‘     BrightGen Limited   ‘. 
        nameWithSpaces = '     BrightGen Limited   ';
        // Use a built-in method to create a new String with the 
        // whitespace at the start and end removed.
        String nameTrimmed = nameWithSpaces.trim();
        
        System.debug(LoggingLevel.ERROR, '\n####  untrimmed => ' + nameWithSpaces);  
        System.debug(LoggingLevel.ERROR, '\n####  trimmed => ' + nameTrimmed);  
        
        System.assertEquals(false, nameTrimmed.startsWith(' '));
    }

    public void intFromDouble()
    {
        // Create a Double with a value of 100.245. 
        Double dn = 100.245;
        // Convert this to an integer using a built-in method
        Integer n = dn.intValue();
        // Convert this to another integer using casting.
        Integer n2 = (Integer) dn;

        System.assertEquals(n, n2);
    }


    public void twoAtOnce()
    {
        // Declare two Integers, with the values 6 and 7, in a single 
        // statement.
        Integer x = 6, y = 7;
    }

    public void booleanFromString()
    {
        // Create a boolean whose value is initialised from the text
        // ‘true’.
        Boolean b = Boolean.valueOf('true');
        System.assertEquals(true, b);
    }

    public void reverse()
    {
        // Create a string with the value ‘1234567890’ 
        String numbers = '1234567890';

        // Use a built-in method to convert to ‘0987654321’
        String reverseNumbers = numbers.reverse();
        System.debug(LoggingLevel.ERROR, '\n#### reverse of ' + numbers + '  => ' + reverseNumbers);
        System.assertEquals('0', reverseNumbers.left(1));
    }

    public void findApex(String candidate) 
    {
        // Find the position of the substring “Apex” in candidate
        String strToFind = 'Apex';
        Integer pos = candidate.indexOf(strToFind);
    }

    public void get10And15(String candidate)
    {
        // Extract the 10th and 15th characters from a string
        Integer tenth = candidate.charAt(9);
        Integer fiftienth = candidate.charAt(14);
    }

    public void monthsBetween(Date startDate)
    {
        // Create variable endDate for 25/12/2024
        Date endDate = Date.newInstance(2024, 12, 25);
        // Use a built-in method to determine the number of months 
        // between the start and end dates.
        Integer monthsBetween = startDate.monthsBetween(endDate);
    }
}