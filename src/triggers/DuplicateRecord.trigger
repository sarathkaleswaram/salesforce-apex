trigger DuplicateRecord on Account (before insert,before update) {
   List<Account> accList = [select Name from Account];
   for(Account acc1:Trigger.New){
       for(Account acc2 : accList){
           if(acc1.Name == acc2.Name){
               acc1.addError('Duplicate Name Not Allowed');
           }
       }
   }
}