@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj (); //assert mean actual TEST. this will create record in Test World.
    

        List<Account> listAcc = [SELECT Id, name 
                                FROM Account 
                                WHERE name = 'SoftInnovas'];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    
    @istest
    private static void dmlInsert4Test() {
        //prepare data
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();

        List<contact> listContact = [select id, lastName from contact where lastname = 'Biden'];
        system.assertEquals(1, listContact.size());
    }
    @isTest
    private static void dmlInsert5Test() {
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test SP';
        sp.Status__c = 'New';
        insert sp;

        DmlDemo.dmlInsertDemo_5();

        //verify if ticket is INSERTED. 
        //soql to GET ticket records.
        List<Salesforce_Ticket__c> listST = [select id, name, subject__c, Salesforce_Project__c 
                                from Salesforce_Ticket__c where Salesforce_Project__c = :sp.id 
                                                                and subject__c = 'Learn Apex dmls'];
        system.assertEquals('Learn Apex dmls', listST[0].Subject__c);
    }
}
