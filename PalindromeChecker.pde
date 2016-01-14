public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here]
  String b = "";
  for(int i =0; i<word.length(); i++){
   if(!word.substring(i,i+1).equals(" ")){b=b+word.substring(i,i+1);}
  }
  
  String a = new String();
  for(int i = b.length(); i > 0; i--){
    a = a + b.substring(i-1,i);
  }
 
  if(a.equalsIgnoreCase(b)){return true;}
  return false;
}
