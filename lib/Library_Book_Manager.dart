void main(){

  EBook eBook=EBook("EBook_Title", "EBook_Author", 2000);
  AudioBook audioBook=AudioBook("AudioBook_Title", "AudioBook_author", 2000);
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



