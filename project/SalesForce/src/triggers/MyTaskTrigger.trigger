trigger MyTaskTrigger on MyTask__c (before insert) {
	for(MyTask__c task: Trigger.New)
    {
       task.Comment__c='Updated from Trigger';
    }
}