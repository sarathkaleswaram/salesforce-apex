trigger StatusCheck on Account (After Insert, After Update) {

    List<Contact> conList = new List<Contact>();
    Account accNew = new Account();
    Integer count = 0;
    
    for(Account acc : Trigger.New){
        conList = [select id,LastName,Status__c from Contact where AccountId =: acc.id];
        for(Contact con : conList){
            System.debug('Contact Status'+con.Status__c);
            if(con.Status__c == 'Pending'){
                count = 1;
                accNew = acc;
            } 
        }
    }
    
    if(count == 1){
        accNew.Status__c = 'Draft';
    } else {
        accNew.Status__c = 'Approved';
    }    
    
    Update accNew;
    
}