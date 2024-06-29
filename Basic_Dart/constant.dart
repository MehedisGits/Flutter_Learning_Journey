/*
# In Dart, a 'constant' is a variable whose value is fixed and cannot be changed after it's declared.
# They are used for values that are known at compile-time and won't change during the execution of the program.
# Using Constant can improve performance and readability in your code.
*/

//Basic Constant
const int maxUsers = 100; // maxUsers is a constant integer with a value of 100

//Constant with String
const String appName =
    "My Awesome App"; // Here, appName is a constant string with the value "My Awesome App"

//Constant with Collection
const List<String> colors = ['Red', 'Green', 'Blue'];

//Constant Object
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

const Point origin = Point(0,
    0); //In this case, 'origin' is a constant object of the 'Point' class with 'x' and 'y' values set to 0.

//Difference Between 'const' and 'final'
//While both 'const' and 'final' are used for variables that are intended to immutable, there are key differences:

/*
Final:-
A 'final' variable can only be set once and can be assigned at runtime., It's value is fixed after it's set.
*/

final DateTime now = DateTime.now();

/*
*Const:--
*A 'const' variable is a compile-time constant, meaning its value must be known and fixed at compile-time.
*/
const int maxConnections = 5;

/*
* To summarize, use 'const' when the value is a true constant and known at compile-time.
* and Use 'final' for variable that are initialized once but not necessarily at compile-time.
*/

void main(){
  print('Max User is: $maxUsers');
  print('App name is: $appName');
  print('Color List: $colors');
  print('Max Connection is: $maxConnections');
  print(origin);
  print(now);
}