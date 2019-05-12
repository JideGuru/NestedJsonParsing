import 'dart:convert';
import 'dart:io';
import 'dart:async';

g() async{
  var file = File('/Users/mac/Desktop/al/lib/al.json');// Change the JSON file location!
  var contents;


  if (await file.exists()) {
    // Read file
    contents = await file.readAsString();

    var decodedJson = jsonDecode(contents);

    List data = decodedJson['data'];
    //To parse the Array in the data u need to use positions like the position of the item.
    Map flightOne = data[0]; //0 because arrays starts from 0
    print("$flightOne \n"); //the first flight in the 'data' array
    print("${flightOne['id']} \n"); //the id of the first flight in the 'data' array


    List offersItems = flightOne['offerItems']; //the Array in 'offerItems'
    print("$offersItems \n"); // the Array in 'offerItems'

    List services = flightOne['offerItems'][0]['services']; //i didnt use offerItems intentionally just for u to understand
    print('$services \n'); //Services array in offeritems

    List segments = flightOne['offerItems'][0]['services'][0]['segments'];//0 is used because these arrays only contain one item nd arrys begins with 0
    print('$segments \n');// segments in services

    Map segmentOne = flightOne['offerItems'][0]['services'][0]['segments'][0];
    print('$segmentOne \n');

    Map flightSegment = segmentOne['flightSegment'];
    print('$flightSegment \n');

    Map departure = flightSegment['departure'];
    print('$departure \n');

    String at = departure['at'];//Departure 
    print("$at \n");

  }else{
    print("couldnt find file");
  }
    
}

