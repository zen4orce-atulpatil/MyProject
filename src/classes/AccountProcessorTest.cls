@IsTest
public class AccountProcessorTest 
{
    public static testmethod void TestAccountProcessorTest()
    {
       Account a=new Account();
        a.Name ='Test Account';
        Insert a;
        
       Contact cont= new Contact();
        cont.FirstName = 'atul';
        cont.LastName = 'patil';
        cont.AccountId= a.Id;
        Insert cont;
        
      set<Id> setAccId = new Set<ID>();
		setAccId.add(a.Id);
        Test.startTest();
        	AccountProcessor.countContacts(setAccId);
        Test.stopTest();
        
        Account ACC = [select Number_of_Contacts__c from Account where id = :a.id LIMIT 1];
        System.assertEquals ( Integer.valueOf(ACC.Number_of_Contacts__c) ,1);
        
    }

}