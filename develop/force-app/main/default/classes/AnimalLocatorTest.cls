@isTest
public class AnimalLocatorTest {
    @isTest
    static void test(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        String response = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('chicken', response);
    }
}
