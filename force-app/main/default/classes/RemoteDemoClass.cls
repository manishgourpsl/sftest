global with sharing class RemoteDemoClass {
    public RemoteDemoClass(){
        
    }
  
    public string inputValue1{get;set;}
    public string inputValue2{get;set;}
@RemoteAction
public static WrapperCalcul submitForm(String nb, String montant){
   WrapperCalcul wrapCalc = new WrapperCalcul();
    wrapCalc.nb = nb;
    wrapCalc.coutTot = montant;

    return wrapCalc;
}
    
   public class WrapperCalcul{
    public String nb;
    public String coutTot;
} 
  
}