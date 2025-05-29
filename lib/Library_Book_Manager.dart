void main(){

  EBook eBook=EBook("EBook_Title", "EBook_Author", 2000);
  AudioBook audioBook=AudioBook("AudioBook_Title", "AudioBook_author", 2000);

  NamedConstructor a=NamedConstructor.Constructor1();
  //NamedConstructor b=NamedConstructor.Constructor2();


  const ConstConstructor c=ConstConstructor("String");
  const ConstConstructor d=ConstConstructor("String");


  if(c.hashCode==d.hashCode){
    print("True");
  }else print("Fale");

}

class Book{

  String title;
  String author;
  int year;

  Book(this.title,this.author,this.year);


  void showInfo(){}
}

class EBook  extends Book with Logger implements Downloadable{
  EBook(super.title, super.author, super.year);

  @override
  void download() {
    logActivity("EBook");
  }

  @override
  void showInfo() {
    print("This book is EBook");
  }


}


class AudioBook extends Book with Logger implements Downloadable{
  AudioBook(super.title, super.author, super.year);

  @override
  void download() {
    logActivity("AudioBook");
  }

  @override
  void showInfo() {
    print("This book is AudioBook");
  }

}


abstract class Downloadable{
  void download();
}

mixin Logger{

  logActivity(String bookType){

    print("$bookType is Logged");

  }
}

// Constructors

class DefaultConstructor{

  // Default constructor
  late String a;
  late int b;
}

class NamedConstructor {
  late int a;
  late int b;
  late int c;

  NamedConstructor(this.a,this.b);

  NamedConstructor.Constructor1():a=2,b=4;

  NamedConstructor.Constructor2(this.a):b=a*2;

  //Redirection
  NamedConstructor.RedirectedContructor():this(2,4);

  NamedConstructor.NewConstructor(String a);
}

// Const constructor
class ConstConstructor{

  final String a;

  const ConstConstructor(this.a);
}






