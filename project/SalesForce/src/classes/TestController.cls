@isTest
public class TestController {

     @isTest static void TestController() {
         
		 Test.startTest();
         MyTask__c task = new MyTask__c ();
         task.Name = 'TestTask2';
         task.Comment__c='New comm';
         insert task;          
         ApexPages.StandardController sc = new ApexPages.StandardController(task);       
         UpdateMyTaskComment testTaskController = new UpdateMyTaskComment(sc);
	     testTaskController.changeComm();
         Test.stopTest();
         System.assertEquals('Updated from Button', task.Comment__c);
     }
}