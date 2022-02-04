global class DailyLeadProcessor implements Schedulable{
    global void execute(SchedulableContext context) {
        List<Lead> leads = [SELECT Id, LeadSource FROM Lead WHERE LeadSource = '' LIMIT 200];
        for (Integer i = 0; i < leads.size(); i++) {
            leads[i].LeadSource = 'Dreamforce';
        }
        update leads;
    }
}
