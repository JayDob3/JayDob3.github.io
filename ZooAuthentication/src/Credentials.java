import java.security.MessageDigest;

public class Credentials {
	private String original = null;

	public Credentials(String original) {
		this.original = original;
	}

	public String generateEncryptedPassword() throws Exception {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(original.getBytes());
		byte[] digest = md.digest();
		StringBuffer sb = new StringBuffer();
		for (byte b : digest) {
			sb.append(String.format("%02x", b & 0xff));
		}

		return sb.toString();
	}

}
