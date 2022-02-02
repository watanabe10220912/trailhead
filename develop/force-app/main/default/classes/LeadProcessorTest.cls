@isTest
public class LeadProcessorTest {
    @TestSetup
    static void setup(){
        List<Lead> testLeads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            testLeads.add(new Lead(LastName='Lead' + i, Company='Company'));
        }
        insert testLeads;        
    }

    @isTest
    static void test() {
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();

        system.assertEquals(200, [select count() from Lead where LeadSource = 'Dreamforce']);
    }
}
