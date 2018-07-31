global class batchAccPhoneToConPhone implements Database.Batchable<SObject>{
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'Select Id,Name,Phone from Account';
        return Database.getQueryLocator(query);
    }   
    
    global void execute(Database.BatchableContext BC, List<Account> scope){
        system.debug('scope-----------'+scope);
        for(Account acc : scope){
            List<Contact> conList = [select Id,Phone from Contact where AccountId =: acc.Id];
            
            for(Contact con : conList){
                con.Phone = acc.Phone;
            }
            try{
                Update conList;
            }
            catch(Exception e){ }
        }
    }
    
    global void finish(Database.BatchableContext BC){
        
    }
}