@isTest
private class HelloWorldTest {
	
	@isTest static void updateLead() {
		// Implement test code
		Lead myLead = new Lead();
		myLead.FirstName = 'Hello';
		myLead.LastName = 'World';
		myLead.Company = 'Google';
		myLead.Status = 'Open-Not Contacted';

		Insert myLead;

		myLead.Company = 'Microsoft';
		Update myLead;
	}
	
	
}