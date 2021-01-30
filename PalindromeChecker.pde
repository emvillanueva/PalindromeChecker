public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    lines[i]=lines[i].toLowerCase();
    String ans="";
    for(int o=0; o<lines[i].length(); o++)
      {
        if (Character.isLetter(lines[i].charAt(o))==true)
          ans=ans+ lines[i].charAt(o);
      }
    //ans.toLowerCase();
    if(palindrome(ans)==true)// if this no workey go back to lines[i]==true
    {
      System.out.println(ans + " IS a palindrome.");//here too
    }
    else
    {
      System.out.println(ans + " is NOT a palindrome.");//here too
    }
  }
}
public boolean palindrome(String word)
{
  String reverse= "";
  for (int i=word.length(); i>0; i--)
    reverse= reverse + word.substring(i-1,i);
  
  if(word.equals(reverse)==true)
    return true;
  return false;
}
public String reverse(String str)
{
  String ans= "";
  for(int i=str.length(); i>0; i--){
    ans= ans + str.substring(i-1, i);
  }
  return ans;
}
