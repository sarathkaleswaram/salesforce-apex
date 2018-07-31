public with sharing class RedirectAndLinkApex {

	private final Chocolate__c mysObject;
    public String accountId{get;set;}

    // The extension constructor initializes the private member
    // variable mysObject by using the getRecord method from the standard
    // controller.
    public RedirectAndLinkApex(ApexPages.StandardController stdController) {
        this.mysObject = (Chocolate__c)stdController.getRecord();
        accountId = ApexPages.currentPage().getParameters().get('aid');
        mysObject.Accounts__c = accountId;
    }

    public String getRecordName() {
        return 'Hello ' + (String)mysObject.get('name') + ' (' + (Id)mysObject.get('Id') + ')';
    }

    public PageReference customSaveMethod(){
        Chocolate__c chocolate = new Chocolate__c();
        chocolate.Name = mysObject.Name;
        chocolate.Status__c = mysObject.Status__c;
        chocolate.Accounts__c = mysObject.Accounts__c;
        chocolate.Manufacture__c = mysObject.Manufacture__c;
        chocolate.Price__c = mysObject.Price__c;

        Insert chocolate;

        return new PageReference('/'+mysObject.Accounts__c);

    }
}