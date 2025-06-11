void main()
{
    var name = "Kimani";
    final age = 22;
    const country = "Kenya";
    print(greeting(name, age, country));
    print(age + 12);
    print(age - 2);
    print(age * 2);
    print(age / 2);
    print(age % 2);
    print(age ~/ 2);
    int? num;
    print(num);
    print(song(title: "Shape of You", artist: "Ed Sheeran", year: 2017));
    //Below is a demonstration of list creation and printing in Dart.
    // It shows how to create a list of integers and a mixed list containing different data types.
    List<int> numbers = [1, 2, 3, 4, 5];
    print(numbers);
    var mixedList = [1, "Hello", true, 3.14];
    print(mixedList);
    // ignore: equal_elements_in_set
    Set<String> fruits = {"Apple", "Banana", "Cherry", "Banana"};
    // This code creates a set of fruits, demonstrating that sets do not allow duplicate values.
    print(fruits);

}
// This code demonstrates variable declaration, string interpolation, arithmetic operations, and null safety in Dart.
// It defines a main function that initializes variables for name, age, and country, then prints a greeting message.
//It also shows a function call that formats a greeting message using the provided parameters.
greeting(String name, int age,  String country) {
    return("Hello, $name! Welcome to Dart programming. You are $age years old and you live in $country.");
}
// The greeting function takes three parameters: name, age, and country, and returns a formatted string.
String song({String? title, required String artist, required int year}) {
    return("The song '$title' by $artist was released in $year.");
}
// The song function takes named parameters with some being required and returns a formatted string about the song.
// It demonstrates the use of named parameters in Dart functions.