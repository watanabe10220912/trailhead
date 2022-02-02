public class LeadProcessor implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id FROM Lead');
    }

    public void execute(Database.BatchableContext bc, List<Lead> leads) {
        for (Integer i = 0; i < leads.size(); i++) {
            leads[i].LeadSource = 'Dreamforce';
        }
        update leads;
    }

    public void finish(Database.BatchableContext bc) {
    }
}
