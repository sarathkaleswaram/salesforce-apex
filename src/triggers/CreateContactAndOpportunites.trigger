trigger CreateContactAndOpportunites on Account (After Insert) {

    Contact con = new Contact();
    Opportunity opp = new Opportunity();
    
    for(Account acc : Trigger.New){
        con.Account = acc;
        con.LastName = acc.Name;
        
        opp.Account = acc;
        opp.Name = acc.Name; 
        opp.CloseDate = Date.newInstance(2016, 12, 9);
        opp.StageName = 'Qualification';
    }
    
    Insert con;
    Insert opp;

}