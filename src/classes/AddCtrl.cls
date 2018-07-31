public class AddCtrl {

    public String dummy{ get; set; }
    public integer a{get;set;}
    public integer b{get;set;}
    public integer c{get;set;}
    public AddCtrl(){
        dummy = 'Click any button ';
    }
    public pagereference add(){
        c=a+b;
        dummy = 'A + B';
        return null;
    }
     public pagereference sub(){
        c=a-b;
        dummy = 'A - B';
        return null;
    }
     public pagereference multiply(){
        c=a*b;
        dummy = 'A * B';
        return null;
    }
     public pagereference divide(){
        c=a/b;
        dummy = 'A / B';
        return null;
    }
}