import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 */

/**
 * @author Vishnu Prabhakar
 *
 */
public class Encrypt {
	
	public static String getMD5(String encryptStr) throws NoSuchAlgorithmException{
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] byteStr = md.digest(encryptStr.getBytes());
		BigInteger no = new BigInteger(1, byteStr);
		String hashStr = no.toString(16);
		return hashStr;
	}
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String encryptStr = "vishnu";
		String hashStr = getMD5(encryptStr);
		System.out.println(encryptStr);
		System.out.println(hashStr);
	}
	
}
