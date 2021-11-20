@isTest
private class AccountTriggerTest {
    @isTest
    static void testCreateAccount() {
        List<Account> accts = new List<Account>();
        for(Integer i=0; i<200; i++) {
            Account acc = new Account(Name = 'Test Account ' + i, BillingState = 'CA');
            accts.add(acc);
        }            

        Test.startTest();
        insert accts;
        Test.stopTest();
    
        List<Account> verifyAccts = [SELECT Id FROM Account WHERE ShippingState = 'CA'];
        System.assertEquals(200, verifyAccts.size());
    }
}
