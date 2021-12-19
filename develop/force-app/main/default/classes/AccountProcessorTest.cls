@IsTest
private class AccountProcessorTest {
    @IsTest
    private static void testCountContacts() {
        Account acc = new Account(Name = 'testAccount');
        insert acc;
        Contact cont = new Contact(LastName = 'testContact', AccountId = acc.Id);
        insert cont;

        List<Id> ids = new List<Id>();
        ids.add(acc.Id);

        Test.startTest();
        AccountProcessor.countContacts(ids);
        Test.stopTest();

        Account result = [SELECT Number_Of_Contacts__c FROM Account WHERE Id = :acc.Id];

        System.assertEquals(1, result.Number_Of_Contacts__c);
    }
}
