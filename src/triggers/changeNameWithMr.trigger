trigger changeNameWithMr on Contact (Before Insert) {
    for(Contact con : Trigger.New){
        String str = con.LastName;
        con.LastName = 'Mr/Miss. '+str;
    }
}