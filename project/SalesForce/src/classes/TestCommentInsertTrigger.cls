@isTest
public class TestCommentInsertTrigger {
    
    @isTest static void TestTrigger() {
        
        Test.startTest();
		MyTask__c task = new MyTask__c();        
        task.Name='Test TaskOK';
        task.Comment__c='New comm';
        insert task;          
        Test.stopTest();  
        MyTask__c task1 = new MyTask__c();
        task1 = [select Comment__c from MyTask__c where Name='Test TaskOK'];
        System.assertEquals('Updated from Trigger', task1.Comment__c); 
    }
}