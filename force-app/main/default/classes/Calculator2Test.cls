@isTest

public class Calculator2Test {
   
    @isTest
    public static void testMessage() {
        Calculator2.welcomeMessage();
        Calculator2.printNewMessage('this is from test method');
           
    }
    @isTest
    private static void addTest1(){
        Integer i = 10;
        Integer j = 15;

        Integer sum1 = Calculator2.add(i, j);
        System.assertEquals(25, sum1);
        
    }
    @isTest
    private static void addTest2(){
        Integer sum2 = Calculator2.add(10, 15, 25);
        System.assertEquals(50, sum2);
        
    }
}

