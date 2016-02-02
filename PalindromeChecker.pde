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

public String bruh(String word)
{
String bob=new String();
  for (int i=0; i<word.length(); i++)
  {
    if (word.charAt(i)!='!'&& word.charAt(i)!='?'&& word.charAt(i)!=' ' && word.charAt(i)!=',')
    {
      bob=bob+word.charAt(i);
    }
  }
  return bob;
  }
public boolean palindrome(String word)
{
  /*for(int i=0;i<word.length()-7;i++){
    
  if(word.substring(i,i+7).equals("rotator"));
  return false;
  //your code here
  
  }
  return true;
  */
   String sNew = new String("");
  word=bruh(word.toLowerCase());
  int first=0;
  int last=word.length()-1;

  while (first<=last)
  {
    if (word.charAt(first)!=word.charAt(last))
    {
      return false;
    } else
    {
      first++;
      last--;
    }
  }
  return true;
}
