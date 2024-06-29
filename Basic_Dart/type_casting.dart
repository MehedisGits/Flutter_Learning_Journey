/*
* Type casting is the process of converting a value from one type to another.
* This is useful when you know more about the type of an Object than what Dart's type system can infer at that point in the code.
*/

//Types of 'Type Casting'
/*
* 1. Implicit Type Casting: Dart does not support implicit type casting to avoid unexpected behavior and potential errors. Therefor, you need to explicitly cast types when necessary.
* 2. This is done using the 'as' keyword or by using type-specific methods.
*/

void main() {
////Using the 'as' keyword
  //The 'as' keyword is used to cast an object to specific type.
  Object value = 'Hello World';

  if (value is String) {
    String stringValue = value as String;
    print('String Value is: $stringValue');
  }
  //In this example, the 'as' keyword is used to cast the 'value' variable from 'Object' to 'String'.

  //-----------------------------------------------------------------------------------------------------------________-----------------------

////Using Type-specific Methods
  //Some types have methods that convert to another type.
  double values = 45.5;
  int a = values.toInt();
  String x = a.toString();
  print(x);

  values = a.toDouble();
  print(x.runtimeType);
  print(values);

  x = values.toString();
  String numValue = '34';
  int id = int.parse(numValue);
  print(id.runtimeType);

  String gpa = '3.50';
  double cgpa = double.parse(gpa);
  print(cgpa);

  //-----------------------------------------------------------------------------------------------------------------------

////Using 'is' and 'is!' for type Checking

  //Before casting, you often check the type using 'is' or 'is!'.
  Object val = 42;

  if (val is int) {
    print('val is an integer');
  } else {
    print('val is not an integer');
  }

  //Example with a list of Mixed Types
  //Suppose you have a list containing elements of different types, and you want to process element based on their types.

  List<dynamic> mixedList = [1, 'two', 3.0, true];

  for (var element in mixedList) {
    if (element is int) {
      print('Integer: $element');
    } else if (element is String) {
      print('String: $element');
    } else if (element is double) {
      print('Double: $element');
    } else if (element is bool) {
      print('Boolean: $element');
    }
  }
  //In this example, the code checks the type of each element in 'mixedList' and processes it accordingly.
}

//Summary:
/*
* Type Casting: Converting a value from one type to another.
* 'as' keyword: Used for explicit type casting.
* Type-specific methods: Convert values between types (e.g. 'int.parse()', 'toString'.
* 'is' and 'is!' : Used for type checking before casting.*/
