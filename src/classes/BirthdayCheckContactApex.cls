public class BirthdayCheckContactApex {
	public BirthdayCheckContactApex() {
		List<Contact> conList = [select id,Receive_Birthday_Emails__c,Reset_Birthday_Email_System__c from Contact];
		List<Contact> conListNew = new List<Contact>();
		for(Contact con : conList){
			con.Receive_Birthday_Emails__c = True;
			con.Reset_Birthday_Email_System__c = True;
			conListNew.add(con);
		}
		Update conListNew;
	}
}