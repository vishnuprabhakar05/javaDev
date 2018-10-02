
public class ConvertToString {

	public static String convertToString(int n){
		String num = String.valueOf(n);
		return num;
	}
	
	public static void main(String[] args) {
		String finalValue = ConvertToString.convertToString(100);
		System.out.println("Value after conversion : "+ finalValue);
	}
}
