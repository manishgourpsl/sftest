public class BookManager {
    
    public static void applyDiscount(Book__c[] Books){
        for(Book__c b : Books){
            b.Price__c *= 0.9;
            
        }
        
    }

}