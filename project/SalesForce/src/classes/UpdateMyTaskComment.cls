public class UpdateMyTaskComment {

    private final MyTask__c task;
    
    public UpdateMyTaskComment(ApexPages.StandardController stdController) {
        this.task = (MyTask__c)stdController.getRecord();
    }

    public PageReference changeComm() {    
        task.Comment__c='Updated from Button';
        update task;
        PageReference acctPage = new PageReference('/lightning/o/MyTask__c/list?filterName=Recent');
        acctPage.setRedirect(true);
        return acctPage;
    }
}