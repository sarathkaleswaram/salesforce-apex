public class sample
{
    public String[] str{get;set;}
    public Boolean showA {get;set;}
    public Boolean showB {get;set;}     
    public Boolean hideA {get;set;}
    public Boolean hideB {get;set;} 
    public Boolean showAB {get;set;}
    public Boolean hideAB {get;set;}
    public Account[] acc{get;set;}
    
    public sample()
    {
        str = new String[]{'ravi','kiran'};
        Account acc1 = new Account();
        acc1.Name = 'Array Test1';
        acc1.AccountNumber = '123123';
        Account acc2 = new Account();
        acc2.Name = 'Array Test2';
        acc2.AccountNumber = '123';
        acc.add(acc1);
        
        Insert acc;
        
        showA = false;
        showB = false; 
        hideA = true;
        hideB = true;
        showAB = true;
        hideAB = false;
    }   
    public void methodAshow()
    {
        showA = true;  
        hideA = false;  
        func();
    }   
    public void methodAhide()
    {
        showA = false;  
        hideA = true;
        func();
    }  
    public void methodBshow()
    {
        showB = true;
        hideB = false;
        func();
    }
    public void methodBhide()
    {
        showB = false;
        hideB = true; 
        func();
    }
    public void methodAllshow()
    {      
        showA = true;
        showB = true;
        hideA = false;
        hideB = false;
        showAB = false;
        hideAB = true;
    }
    public void methodAllhide()
    {
        showA = false;
        showB = false;
        hideA = true;
        hideB = true;
        showAB = true;
        hideAB = false;
    }
    public void func(){
        if(showA && showB){
            showAB = false;
            hideAB = true;
        }
        if(!showA && !showB){
            showAB = true;
            hideAB = false;
        }
    }
}