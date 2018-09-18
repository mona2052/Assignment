import java.util.Scanner;
import java.util.Vector;

public class Ssn_Validation {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);	
		System.out.println("Enter the Number:");
		String number = input.nextLine();
		if(number.length() == 11 && number.matches("\\d{3}-\\d{2}-\\d{4}") ) {
			System.out.println("Valid");
		}else {
			System.out.println("Invalid");
		}
		input.close();
	
	}

}
