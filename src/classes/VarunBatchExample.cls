global class VarunBatchExample implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc){
        
        String acc='select id,Name from Account';
        
        return Database.getQueryLocator(acc);
    }
    
    global void execute(Database.BatchableContext bc,List<Account> a){
        for(Account ac:a){
            ac.Name=ac.Name+'M';
        }
        try{
            update(a);
        }catch(Exception e){
            System.debug('e');
        }
    }
     global void finish(Database.BatchableContext bc) {

  }
    
}