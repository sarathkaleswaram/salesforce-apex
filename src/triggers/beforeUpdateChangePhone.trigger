trigger beforeUpdateChangePhone on Account (Before Update) {

    for(Account acc : Trigger.New){
        acc.Phone = '123456789';
    }
}