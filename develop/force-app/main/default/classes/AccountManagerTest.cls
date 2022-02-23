@isTest
public class AccountManagerTest {
    @isTest
    static void testGetAccountById() {
        Id accountId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/' + accountId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;

        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Test Account', thisAccount.Name);
    }

    static Id createTestRecord() {
        Account accountTest = new Account(
            Name = 'Test Account'
        );
        insert accountTest;

        Contact contactTest = new Contact(
            LastName = 'Test Contact',
            AccountId = accountTest.Id
        );
        insert contactTest;

        return accountTest.Id;
    }
}
