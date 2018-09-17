public class ReverseString {
    public static void main(String []args){
        String input = "chiklu is very good boy"; 
        char[] str = input.toCharArray(); 
  
        for (int i=0,j=str.length-1; i < j ; i++ ,j--) 
        { 
            char temp = str[i]; 
            str[i] = str[j]; 
            str[j]=temp; 
        } 
        for(char s:str)
            System.out.print(s);
     }
}

