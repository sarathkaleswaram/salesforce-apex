global class BatchPradeepCode implements Database.Batchable<sObject> {
    
    String query;
    
    global BatchPradeepCode() {
        
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'Select Id,Name from Account';
        system.debug('================================'+query);
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<Account> scope) {
        for(Account acc : scope){
            if(acc.Name == 'test phone change'){
                acc.Phone = '123456';
            }
        }
        system.debug('--------------------------------'+scope);
        update scope;
    }
    
    global void finish(Database.BatchableContext BC) {
        
    }
    
}