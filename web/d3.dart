import 'dart:html';

void main() {
  querySelector("#submit").onClick.listen((e) => nameEngine());

}

nameEngine(){
  InputElement nameText = querySelector("#name");
  String nameString = nameText.value;
  String fullString = "";
  print("Hello, $nameString");
  
  LabelElement name_out = querySelector("#out_a");
  
  InputElement repeat_times = querySelector("#repeat");
  int repeatNum = int.parse(repeat_times.value);
  
  for (int i = 0; i < repeatNum; i++){
    String seq = (i+1).toString();
    fullString = "$fullString <br /> $seq: $nameString";
    
  }
  name_out.innerHtml = fullString;

}