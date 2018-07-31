global class batchSchedule implements Schedulable {
    global void execute(SchedulableContext clx){
       /* batchAccountUpdate pt = new batchAccountUpdate();
        database.executeBatch(pt);*/
        batchAccPhoneToConPhone bap = new batchAccPhoneToConPhone();
        database.executeBatch(bap);
    }
}