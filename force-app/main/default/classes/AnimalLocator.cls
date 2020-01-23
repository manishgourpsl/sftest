public class AnimalLocator {
public static string getAnimalNameById(Integer animalId) {
    	string animalName = '';
            List<String> params = new List<String>();
            params.add(String.valueOf(animalId));
    	String formattedString  = String.format('https://th-apex-http-callout.herokuapp.com/animals/{0}', params);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
     
        request.setEndpoint(formattedString);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animalDetails =  (Map<String, Object>)results.get('animal');
            animalName = (string)animalDetails.get('name');
             
            System.debug('Received the following animals:' + animalName);
             
        }
        return animalName;
    }

}