class User{
  static const String PassionCoding = 'coding';
  static const String PassionMusic = 'music';
  static const String PassionAnimes = 'animes';

  String firstName = ''; 
  String lastName = ''; 
  Map<String, bool> passions = {
    PassionCoding: false,
    PassionMusic: false,
    PassionAnimes: false,
  };

  bool newsLetter = false;

  save(){
    print('form submitted');
  }

}
