@isTest
private class HomeworkTest 
{
    @isTest static void testHomework() 
    {
        Homework homework = new Homework();

        homework.newYearsEve();
        homework.createId();
        homework.sliceOfPi();
        homework.whitespace();
        homework.intFromDouble();
        homework.twoAtOnce();
        homework.booleanFromString();
        homework.reverse();
        homework.findApex('thereisApexsomewhereinhere');
        homework.get10And15('this string has at least 15 characters in it');
        homework.monthsBetween(date.newinstance(2021, 9, 25));
    }
}