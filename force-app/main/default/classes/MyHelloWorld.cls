public class MyHelloWorld {
    public static void applyDiscount(mBook__c[] mybooks){
        for(mBook__c b : mybooks){
            b.price__c = b.price__c * 0.9;
        }
        
    }
}