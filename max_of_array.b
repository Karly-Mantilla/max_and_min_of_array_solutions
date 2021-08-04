import java.util.*;

public class Solution
    {
    public static void solve()
        {
        Scanner input = new Scanner(System.in);
        int[] array = new int[300];
        int max;
        int min;
        
        for(int i = 0; i < 300; i++)
            {
            array[i] = input.nextInt();
            }
        
        max = array[0];
        min = array[0];
        
        for(int i = 1; i < 300; i++)
            {
            if(array[i] < min)
                {
                min = array[i];
                }
            
            if(array[i] > max)
                {
                max = array[i];
                }
            }
        
        System.out.println(max + " " + min);
        
        }
    
    public static void main(String args[])
        {
                    
            solve();
            
        }
  
    }