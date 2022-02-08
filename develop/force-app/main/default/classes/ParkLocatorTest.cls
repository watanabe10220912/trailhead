@isTest
public class ParkLocatorTest {
    @isTest
    static void test() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> result = ParkLocator.country('Germany');
        System.assertEquals('Test Park', result[0]);
    }
}
