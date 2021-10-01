public with sharing class Homework {
    
    
    // Declare a variable to hold the postcode of Ginetta House - as
    // the office cannot move, this should be immutable

    final string POSTCODE = 'mib007';



    // Declare a string that is initialised from an Integer
    integer jamesbondcodename = 007;
    String declared = String.valueOf(jamesbondcodename);

    public void newYearsEve()
    {

        // Create a variable representing the time 12:30:25 in the local 
        // timezone and use this time to create a DateTime for the date 
        // 12/31/2021
        
        datetime myDate = datetime.newInstance(2021, 12, 31, 12, 30, 25);
        DateTime now=System.now(); // or system.debug(myDate);

    }

    public void castAccount()
    {
        // Create an sobject variable initialised to a new Account. 
        // Create an account variable that is initialised by casting the 
        // sobject variable.
        Account acc=new Account(Name ='Witham');
        sObject generic=acc;

    }    

    public void createBlob()
    {
        // Create a Blob from the characters ‘I am a Blob’
        
        Blob b = Blob.valueof('I am a Blob');
        system.debug(b.tostring());// covert back to string
    }

    public void createId()
    {
        
        // Create an ID with the value ‘00D180000001s0LEAQ', convert 
        // this to the 15 character version.
       
        String Id_15_char = '00D180000001s0L';
        String Id_18_char = '00D180000001s0LEAQ';
        ID testId = Id_18_char;
        System.assertEquals(Id_15_char,testId.to15());
    }

    public void sliceOfPi()
    {
        // Create a Decimal with the value of PI to 5 decimal places.
        
        // Use the built-in method to convert it to 2 decimal places.
        
        Decimal d = 3.141592;
        d = d.setScale(2);
    }

    public void whitespace()
    {
        
        // Create a String variable. 

        // Assign it the value ‘     BrightGen Limited   ‘. 
        
        // Use a built-in method to create a new String with the 
        // whitespace at the start and end removed.
        
        string company = '     BrightGen Limited   ';
        string secondcompany = company.deleteWhitespace();
        //System.assertEquals(secondcompany, company.deleteWhitespace());

    }

    public void intFromDouble()
    {
        // Create a Double with a value of 100.245. 
        
        // Convert this to an integer using a built-in method
        
        // Convert this to another integer using casting.

                Double myDouble = 100.245;
                integer mynumber = myDouble.intvalue();
                integer mysecondnumber =(integer) mydouble;
                // use this to learn casting Integer intPi=(Integer) pi;


                
}


    public void twoAtOnce()
    {
        // Declare two Integers, with the values 6 and 7, in a single 
        // statement.
        integer first = 6, second = 7;
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
        
        // Use a built-in method to convert to ‘0987654321’
        
        string numbervalue = '1234567890';
        String Reversed = numbervalue.reverse();
    }

    public void findApex(String candidate) 
    {
        // Find the position of the substring “Apex” in candidate. what you need to do is create a method
        // who calls this method needs to pass a string as a parameter. (i need help with this)
        String myString2 = 'Apex';
        Integer result = candidate.indexOf(mystring2);
        
    }

    public void get10And15(String candidate)
    {
        // Extract the 10th and 15th characters from a string (i need help with this)
        
        string num1 = 'uncopyrighttable'.substring(9,10);
        string num2 = 'uncopyrighttable'.substring(14,15);

    }

    public void monthsBetween(Date startDate)
    {
        // Create variable endDate for 25/12/2024
        
        // Use a built-in method to determine the number of months 
        // between the start and end dates.
        
        
        Date endDate = Date.newInstance(2024, 12, 25);
        Date newstartDate = Date.newInstance(2024, 4, 8);
        Integer monthsBetween = endDate.monthsBetween(startDate);
        System.assertEquals(8, monthsBetween);

        
// Create Datetime on May 28, 2013 at 1:06:08 AM in the local timezone.
Datetime localtimezone = Datetime.newInstance(2013, 5, 28, 1, 06, 08);

    }
}