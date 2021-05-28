public class UserCredentials {

	private String userName = null;
	private String password = null;

	public UserCredentials(String userName, String password) {
		setUserName(userName);
		setPassword(password);
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		Credentials cred = new Credentials(password);
		String encryptedPassword = null;

		try {
			encryptedPassword = cred.generateEncryptedPassword();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.password = encryptedPassword;
		}

	}

}
