@isTest
public class AnimalLocatorTest {
    
    @isTest static  void testGetAnimalNameCallout() {
        
     
	Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
	String animalName = AnimalLocator.getAnimalNameById(1);
       
     
        System.assertNotEquals('', animalname);




    }
        

}