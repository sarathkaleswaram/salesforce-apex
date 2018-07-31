public class CheckBoxListApex {
    public Integer count{get;set;}
    public list<Account> accList{get;set;}
    public Map<String, Boolean> accMap{get;set;}
    public String mapTrueList{get;set;}
    
    public CheckBoxListApex(){
        count = 5;
        accMap = new Map<String, Boolean>();
        accList=[select Id,Name from Account ];
        for(Account acc : accList){
            accMap.put(acc.Id,false);
        }
        system.debug('Account mapping ----------------------------'+accMap);
    }
    
    public void change(){
        count = 10;
        for (String id : accMap.keySet()) {
            if(accMap.get(id)){
            	mapTrueList += id+', ';
            }
        }
        system.debug('Account mapping ----------------------------'+mapTrueList);
    }
}