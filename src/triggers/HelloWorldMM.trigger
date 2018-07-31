trigger HelloWorldMM on Lead (before Update) {

 for(Lead l : Trigger.New){
        l.FirstName = 'Hello';
        l.LastName = 'World';
    }
}