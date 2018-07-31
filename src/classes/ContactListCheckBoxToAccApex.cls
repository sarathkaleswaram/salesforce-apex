public class ContactListCheckBoxToAccApex {
    public list<Contact> conlist{get;set;}
    public Id selectAcc{get;set;}
    public Map<Id,Boolean> conMap{get;set;}
    
    public ContactListCheckBoxToAccApex(){
        conlist = [select Id,LastName,Phone,AccountId from contact];
        conMap = new Map<Id, Boolean>();
        for(Contact con : conlist){
            conMap.put(con.Id,false);
        }
       	system.debug('----------------'+conMap);
        
    }
    public list<SelectOption> getoptionAcc(){
        list<SelectOption> optionAcc = new list<SelectOption>();
        list<Account> Acclist = [select Name,Id from Account];
        for(Account acc : Acclist){
            optionAcc.add(new SelectOption(acc.Id,acc.Name));
        }
        return optionAcc;
    }
    public void LinkMethod(){
        for(Id contactId : conMap.keySet()){
            if(conMap.get(contactId)){
            	Contact singleContact = [select id,AccountId from Contact where Id=: contactId];
                singleContact.AccountId = selectAcc;
                Update singleContact;
            }
        }
    }
}