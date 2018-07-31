trigger maximumContactPerAccount on Contact (Before Insert, Before Update) {
    private ID accId;
    private Account accRecord;
    
    for(Contact con : Trigger.New){
        accId = con.AccountId;
        try{
            accRecord = [select id,name,Maximum_Contacts__c, (select id from Contacts) from Account where Id=: accId];
            if(accRecord.Contacts.size() >= accRecord.Maximum_Contacts__c){
                con.addError('Contacts cannot be more than '+accRecord.Maximum_Contacts__c+' for an Account');
            }
        }
        catch(Exception e){
            system.debug('exception'+e);
        }
    }
}