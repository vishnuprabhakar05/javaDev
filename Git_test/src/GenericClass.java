/**
 * 
 */

/**
 * @author USER
 *
 */
public class GenericClass {
	
	public static <E> void printArray(E[] myArr){
		for(E element : myArr){
			System.out.printf("%s ", element);
		}
		System.out.println();
	}
	public static void main(String[] args) {
		Integer[] intArray = {1,4,2,6};
		Double[] doubleArray = {2.2,3.9,7.5,5.3};
		Character[] charArray = {'v','i','s','h'};
		
		System.out.println("Content of Integer Array :");
		printArray(intArray);
		
		System.out.println("Content of Double Array :");
		printArray(doubleArray);
		
		System.out.println("Content of Character Array :");
		printArray(charArray);
	}	
}

