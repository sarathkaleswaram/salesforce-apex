trigger HelloWorld on Lead (Before Update) {
    
    for(Lead l : Trigger.New){
        l.FirstName = 'Hello';
        l.LastName = 'World';
    }

}