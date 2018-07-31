trigger changeOfAccountNumber on Account (before Update) {

    for(Account acc: Trigger.New){
        Account oldAcc = Trigger.oldMap.get(acc.Id);
        String newaccNum = acc.AccountNumber;
        if(oldAcc.AccountNumber != newaccNum){
            acc.Description = 'Account number is changed from '+oldAcc.AccountNumber+' to '+newaccNum;
        }
    }
}