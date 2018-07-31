public class AccConRelationClass {
    public List<Contact> conList{get;set;} 
    public String var{get;set;}
    public Boolean show{get;set;}
    public Contact con1{get;set;}
    
    public AccConRelationClass(){
        conList = [select LastName, Account.name, Account.phone from contact];
        show = false;
    }
    public void method(){
        if(show)
            show = false;
        else
            show = true;
    }
    public void resetMethod(){
        var = '';
    }
    public List<Account> accList{
        get
        {
            return [select name,(select id,name from Contacts) from Account];
        }
    }
    public PageReference sendEmail(){
        return null;
    }

    public void paramMethod(){
        Id conId = System.currentPageReference().getParameters().get('id');
        con1 = [select LastName,phone from Contact where Id =: conId];
        System.debug('slkdjflsd'+con1+', '+conId);
    }
    
}