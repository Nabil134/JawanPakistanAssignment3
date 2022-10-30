void main() {
  //Q.1: Create a list of names and print all names using list.
  List name = ['Nabil', 'Huzaifa', 'Usman'];
  print(name);
  /*
  OutPut:
  [Nabil, Huzaifa, Usman]
  */
  /*
  Q.2: Create an empty list of type string called days.
   Use the add method to add names of 7 days and print all days.
   */
  List<String> days = []; //Create an empty list of type string called days
  days.add('Monday'); //Add Monday to days empty list
  days.add('Tuesday'); //Add Tuesday to days empty list
  days.add('Wednesday'); //Add Wednesdy to days empty list
  days.add('Thursday'); //Add Thursday to days empty list
  days.add('Friday'); //Add Friday to days empty list
  days.add('Saturday'); //Add Satursday to days empty list
  days.add('Sunday'); //Add Sunday to days empty list
  print(days); //print all days using list
  /*
  OutPut:
  [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
  */
  /*
 Q.3: Add your 7 friend names to the list. Use where to find a  name that starts with alphabet a.
  */
  List<String> names = [
    "Ammar",
    "Ali",
    "Arsalan",
    "Aitezaz",
    "Ahmed",
    "Usman",
    "Huzaifa"
  ]; // Add your 7 friend names to the list

  names = names
      .map((e) => e.toLowerCase())
      .toList(); //Convert names List to LowerCase
  List<String> startWithA = names
      .where((element) => element.startsWith("a"))
      .toList(); //Use where to find a  name that starts with alphabet a

  print(startWithA); //print all names starts with 'a' using List
  /*
  OutPut:
  [ammar, ali, arsalan, aitezaz, ahmed]

  */
  /*
  Q.4 Create a map with name, address, age, country keys and store values to it.
 Update country name to other country and print all keys and values.
  */
  Map std_data = {
    'name': 'Nabil',
    'address': 'S.A.2 K.A.E.C.H.S block 3 karachi',
    'age': 24,
    'country': 'Pakistan'
  }; //Create a map with name, address, age, country keys and store values to it.
  std_data.update('country',
      (value) => 'Saudi Arab'); //Update country name to other country
  print(std_data); //print all keys and values of std_data using map
/*
OutPut:
{name: Nabil, address: S.A.2 K.A.E.C.H.S block 3 karachi, age: 24, country: Saudi Arab}
*/
/*
Q.5 Create a map with name, phone keys and store some values to it.
 Use where to find all keys that have length 4.
*/
  Map info = {
    'name': 'Nabil',
    'phone': 03002517260,
  }; //Create a map with name, phone keys and store some values to it
  info.removeWhere((key, value) {
    return key.length != 4;
  }); // Use where to find all keys that have length 4.
  print(
      'The key that have length is ${info.keys}'); //print to find all keys that have length 4
  /*
  OutPut:
  The key that have length is (name)

  */
  /*
  Q.6:
Create Map variable name world then inside it create countries Map (dart Map) 
and using key, value pair assign country, capitalCity, currency and language to it.
 Search for ".forEach()" mehtod and using it print all the value of world variable.
  */
  var world = {
    "Pakistan": {
      'Capital City': 'Islamabad',
      'Currency': 'Pakistani Rupee',
      'language': 'Urdu'
    },
    "India": {
      'Capital City': 'New Delhi',
      'Currency': 'Indian Rupee',
      'language': 'Hindi'
    },
    "China": {
      'Capital City': 'Beijing',
      'Currency': 'Renminbi',
      'language': 'Mandarine'
    },
  };
  print('all the values of world variable is');
  world.forEach((key, value) => print('$value'));

/*
OutPut:
all the values of world variable is
{Capital City: Islamabad, Currency: Pakistani Rupee, language: Urdu}
{Capital City: New Delhi, Currency: Indian Rupee, language: Hindi}
{Capital City: Beijing, Currency: Renminbi, language: Mandarine}

*/

/*

Q.7:
Map<String, double> mathMarks = {
  'ram': 30,
  'mark': 32,
  'harry': 88,
  'raj': 69,
  'john': 15,
};

Using ".removeWhere()" method remove key, value where value <= 30 
then print the updated map mathMarks variable.
*/
  Map<String, double> mathMarks = {
    'ram': 30,
    'mark': 32,
    'harry': 80,
    'raj': 69,
    'john': 15
  };
  mathMarks.removeWhere((key, value) {
    return (value <= 30);
  }); //Using ".removeWhere()" method remove key, value where value <= 30
  print(mathMarks); //print the updated map mathMarks variable.
  /*
  OutPut:
  {mark: 32.0, harry: 80.0, raj: 69.0}
  */
  /*
  Q.8:
Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};

Check if "fri" exist in expanses; if exist change it's value to 5000.0 
otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  */
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  if (expenses.containsKey(
      'fri')) //Check if "fri" exist in expanses; if exist change it's value to 5000.0
  {
    expenses['fri'] = 5000.0;
  } else //otherwise add 'fri' to expenses and set its value to 5000.0
  {
    expenses['fri'] = 5000.0;
  }
  print(expenses); //print expenses
  /*
  OutPut:
  {sun: 3000.0, mon: 3000.0, tue: 3234.0, fri: 5000.0}
  */
}
