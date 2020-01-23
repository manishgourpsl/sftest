public class ContactAndLeadSearch{
public static List<List< SObject>> searchContactsAndLeads(string stringToSearch){
List<List< SObject>> resultSet = [FIND :stringToSearch IN NAME FIELDS RETURNING Contact(Firstname,lastname),lead(firstname,lastname)];
    return resultSet ;

}

}