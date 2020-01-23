public class StringArrayTest{

    public static List<String> generateStringArray(integer numToGenerate){
    
    List<String> generatedList = new List<String>();
    string testString = 'Test';
    for(integer i = 0; i < numToGenerate; i++)
    {

        generatedList.add(testString + ' ' + i);
    
    }
    
    return generatedList;
    
    
    }
    
    
}