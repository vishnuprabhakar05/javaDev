import java.security.MessageDigest;
import java.util.Arrays;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;


/**
 * 
 */

/**
 * @author Vishnu Prabhakar
 *
 */
public class Encrypt3DES {
	public static final String MD5 ="md5";
	public static final String KEY = "HG58YZ3CR9";
	public static final String ENCODING_FMT = "utf-8";
	public static final String ALGORITHM = "DESede";
	public static final String TRANSFORMATION = "DESede/CBC/PKCS5Padding";
	
	public static byte[] encrypt(String plainText) throws Exception{
		final MessageDigest md = MessageDigest.getInstance(MD5);
		final byte[] salt = md.digest(KEY.getBytes(ENCODING_FMT));
		final byte[] keyBytes = Arrays.copyOf(salt, 24);
		for (int j = 0, k = 16; j < 8;) {
            keyBytes[k++] = keyBytes[j++];
        }
		final SecretKey key = new SecretKeySpec(keyBytes, ALGORITHM);
		final IvParameterSpec iv = new IvParameterSpec(new byte[8]);
		final Cipher cipher = Cipher.getInstance(TRANSFORMATION);
		cipher.init(Cipher.ENCRYPT_MODE, key, iv);
		final byte[] plainTextBytes = plainText.getBytes(ENCODING_FMT);
		final byte[] cipherText = cipher.doFinal(plainTextBytes);
		
		return cipherText;
	}
	
	public static String decrypt(byte[] encrypt) throws Exception{
		final MessageDigest md = MessageDigest.getInstance(MD5);
		final byte[] salt = md.digest(KEY.getBytes(ENCODING_FMT));
		final byte[] keyBytes = Arrays.copyOf(salt, 24);
		for (int j = 0, k = 16; j < 8;) {
            keyBytes[k++] = keyBytes[j++];
        }
		final SecretKey key = new SecretKeySpec(keyBytes, ALGORITHM);
		final IvParameterSpec iv = new IvParameterSpec(new byte[8]);
		final Cipher decipher = Cipher.getInstance(TRANSFORMATION);
		decipher.init(Cipher.DECRYPT_MODE, key, iv);
		final byte[] plainText = decipher.doFinal(encrypt);
		return new String(plainText,"UTF-8");
	}
	
	public static void main(String[] args) throws Exception {
		String plainText = "Vishnu";
		byte[] encText = new Encrypt3DES().encrypt(plainText);
		String decText = new Encrypt3DES().decrypt(encText);
		System.out.println(plainText);
		System.out.println(encText);
		System.out.println(decText);
		
	}
}
