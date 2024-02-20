void main() {
  String str1 = 'plusinfosys';
  stringToHashmap(str1);
}
 void stringToHashmap(String str){
   Map<String, int> finalMap = {};

   for (int charcode in str.runes) {
     var char = String.fromCharCode(charcode);
     if (finalMap.containsKey(char)) {
        finalMap[char] = finalMap[char]! + 1;
     }
     else{
      finalMap[char] = 1;
     }   
   }
   print(finalMap);
 }