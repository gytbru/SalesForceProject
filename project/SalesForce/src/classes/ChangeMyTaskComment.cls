public class ChangeMyTaskComment {
    
    public MyTask__c task {get; private set;}
    
    public ChangeMyTaskComment(ApexPages.StandardController stdController) {
		this.task = [select Comment__c from MyTask__c
                         where Name = 'Test' ORDER BY id__c ASC LIMIT 1 ];
	}
    
    public MyTask__c getTask() {    
		return task;
    }
    
    public PageReference save() {  
        update task;   
  		PageReference acctPage = new PageReference('/lightning/o/MyTask__c/list?filterName=Recent');
        acctPage.setRedirect(true);
        return acctPage;
    }
}