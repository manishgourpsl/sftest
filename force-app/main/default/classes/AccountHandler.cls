public class AccountHandler{

//Inserts new Account
public static Account insertNewAccount(string accountName){
    Account newAccount = new Account(name=accountName);
    try{
        insert newAccount ;
        }catch(Exception ex){
            return null;
        }
    
    return newAccount ;

}

}