public with sharing class Repack{

    public Opportunity test{get;set;}
    public Opportunity test1{get;set;}
    public boolean abc {get;set;}
    public boolean ayz{get;set;}

        public Repack(ApexPages.StandardController stdCtrl) {
        this.test=(Opportunity)stdCtrl.getRecord();
        abc=False;
        this.test1=(Opportunity)stdCtrl.getRecord();
        ayz= False;
        //this.test=true;//observe the change in this line.Added this for proper behaviour on load 
       }

       public pagereference aaa(){

           return null;
       }
       public pagereference bbb(){

           return null;
       }

}