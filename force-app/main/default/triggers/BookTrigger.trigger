trigger BookTrigger on mBook__c (before insert) {
    mBook__c[] mbooks = Trigger.new;
    MyHelloWorld.applyDiscount(mBooks);
    

}