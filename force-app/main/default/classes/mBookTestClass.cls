@isTest
public class mBookTestClass {
    static testMethod void validateHelloWorld(){
        mBook__c mybook = new mBook__c(Name='Behind The Cloud',price__c = 100);
        insert mybook;
        
        mybook = [Select price__c from mBook__c where id = :mybook.Id];
        System.assertEquals(90,mybook.Price__c);
    }
}