trigger batchClassTest on Account (after Update) {
    
    batchAccPhoneToConPhone bap = new batchAccPhoneToConPhone ();
        database.executeBatch(bap);
}