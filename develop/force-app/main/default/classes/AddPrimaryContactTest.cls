@isTest
public class AddPrimaryContactTest {
    @TestSetup
    static void setup(){
        List<Account> accounts = new List<Account>();
        for(Integer i = 0; i < 100; i++) {
            if(i < 50) {
                accounts.add(new Account(Name = 'TestAccount' + i, BillingState = 'NY'));
            } else {
                accounts.add(new Account(Name = 'TestAccount' + i, BillingState = 'CA'));
            }
        }
        insert accounts;
    }

    @isTest
    static void test() {
        Contact contact = new Contact();
        AddPrimaryContact addPrimaryContact = new AddPrimaryContact(contact, 'CA');
        Test.startTest();
        System.enqueueJob(addPrimaryContact);
        Test.stopTest();

        System.assertEquals(50, [SELECT count() FROM Contact WHERE Account.BillingState = 'CA']);
    }
}
