public class AddPrimaryContact implements Queueable {
    private Contact contact;
    private String state;
    public AddPrimaryContact(Contact record, String abbreviation) {
        this.contact = record;
        this.state = abbreviation;
    }

    public void execute(QueueableContext context) {
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE BillingState = :state];
        List<Contact> contacts = new List<Contact>();
        Contact clonedContact;
        for(Account account : accounts) {
            clonedContact = contact.clone();
            clonedContact.LastName = account.Name;
            clonedContact.AccountId = account.Id;
            contacts.add(clonedContact);
        }
        insert contacts;
    }
}
