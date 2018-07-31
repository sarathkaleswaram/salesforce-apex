trigger addContact on Account (Before Insert, After Insert) {
    
    private List<Contact> conList{get;set;}
    if(Trigger.IsAfter){
        for(Account acc : Trigger.New){
            Contact con = new Contact();
            con.LastName = 'Ravi';
            con.Account = acc;
            conList.add(con);
        }
        Insert conList;
    }
}