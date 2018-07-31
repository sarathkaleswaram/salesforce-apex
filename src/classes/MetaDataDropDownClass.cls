public with sharing class MetaDataDropDownClass {
    public String accountField{get;set;}
    public List<SelectOption> accountFieldOptions = new List<SelectOption>();
    public List<Account> accList{get;set;}
    public String af{get;set;}
    public Boolean afName{get;set;}
    public List<String> arrayString{get;set;}
    
    public MetaDataDropDownClass() {
        accountField='Name';
        afName = True;
        arrayString = new List<String>();
        accList = Database.query('select Name from Account');
        for(Account acc : accList){
            arrayString.add(acc.Name);
        }
    }
    
    public List<SelectOption> getaccountFieldOptions(){
        accountFieldOptions.add(new SelectOption('Name','Name'));
        accountFieldOptions.add(new SelectOption('Phone','Phone'));
        accountFieldOptions.add(new SelectOption('Rating','Rating'));
        return accountFieldOptions;
    }
    
    public void listChangeMethod(){
        af = accountField;
        afName = False;
        arrayString = new List<String>();
        accList = Database.query('select '+accountField+' from Account');
        if(accountField == 'Name'){
            for(Account acc : accList){
                arrayString.add(acc.Name);
            }
        }
        if(accountField == 'Phone'){
            for(Account acc : accList){
                arrayString.add(acc.Phone);
            }
        }
        if(accountField == 'Rating'){
            for(Account acc : accList){
                arrayString.add(acc.Rating);
            }
        }
        system.debug('---------------------------'+accList);
    }
}