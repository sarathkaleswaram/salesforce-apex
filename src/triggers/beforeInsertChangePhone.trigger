trigger beforeInsertChangePhone on Account (Before Insert) {

    for(Account acc : Trigger.New){
        acc.Phone = '9848022338';
    }
}