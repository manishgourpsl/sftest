public class ContactSearch{
    public static List<Contact> searchForContacts(string lastname,string postalcode){
    
    List<Contact> searchedContacts = [Select Id,Name from Contact where lastname = :lastname and MailingPostalCode = :postalcode];
    return searchedContacts;
    
    }
 }