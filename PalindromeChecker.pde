public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{ 
  word = word.toLowerCase();
  String noSpace = new String();
  for (int i=0; i<word.length(); i++)
  {
    if (!word.substring(i, i+1).equals(" "))
      noSpace = noSpace + word.substring(i, i+1);
  }

  String letters = new String();
  for (int i=0; i<noSpace.length(); i++)
  {
    if (Character.isLetter(noSpace.charAt(i))==true)
      letters = letters + noSpace.substring(i,i+1);
  }

  if (reverse(letters).equals(letters))
  {
    return true;
  }
  return false;
 }
 public String reverse(String str)
{
  String reverse = new String();
  for (int i=str.length()-1; i>-1; i--)
    {
      reverse = reverse + str.substring(i,i+1);
    }
  return reverse;
}

