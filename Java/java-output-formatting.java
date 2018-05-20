import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("================================");
            for(int i=0;i<3;i++)
            {
                String s1=sc.next();
                int x=sc.nextInt();
                //Complete this line
				// eg. output=
				// python   050
				// Each String is left-justified with trailing whitespace through the first 15 characters. The leading digit of the integer is the 16 character
				//each integer that was less than 3 digits now has leading zeroes.
				// - left align
				// 15 characters adding spaces at the end
				// 0 is the fill character, added if necessary to make it 3 digit long
				System.out.printf("%-15s%03d%n", s1, x);
            }
            System.out.println("================================");

    }
}