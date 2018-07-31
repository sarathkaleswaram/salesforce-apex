trigger changePhoneDescriptionTrigger on Account (Before Insert) {
    for(Account acc : Trigger.New){
        if(acc.Phone == '123'){
            acc.Phone = '801829852';
            acc.Description = 'Hi';
        }
    }
}