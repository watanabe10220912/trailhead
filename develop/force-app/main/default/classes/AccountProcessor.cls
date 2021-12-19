public class AccountProcessor {
    @future
    public static void countContacts(List<Id> ids) {
        List<Account> accts = new List<Account>();
        for(Id id : ids) {
            Account acc = new Account();
            acc.Id = id;
            acc.Number_Of_Contacts__c = [SELECT COUNT() FROM Contact WHERE AccountId = :id];
            accts.add(acc);
        }
        update accts;
    }
}
