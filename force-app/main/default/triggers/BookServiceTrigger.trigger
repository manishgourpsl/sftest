trigger BookServiceTrigger on Book__c (before insert) {
    Book__c[] books = Trigger.New;
    BookManager.applyDiscount(books);
}