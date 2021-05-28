import java.util.Map;

public class AuthenticationHandler {

	private AuthenticationHandler() {

	}

	// Validate if user or credentials is valid
	public static boolean isValidUser(Map<String, String> credentials, String user, String pass) {

		// Validate if scenario is valid
		if (credentials == null || user == null || pass == null) {
			// Always return false for negative scenarios
			return false;
		}

		boolean isValid = false;
		Credentials cred = new Credentials(pass);
		try {
			if (credentials.containsKey(user) && credentials.containsValue(cred.generateEncryptedPassword())) {
				isValid = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isValid;
	}

	public static boolean showGreetings(String username) {
		// Show corresponding greetings per user

		boolean isValidUser = false;

		switch (username) {
		case Authentication.USER_VETERINARIAN:
		case Authentication.USER_VETERINARIAN1:
			System.out.println(
					"Hello, Veterinarian!\n" + "\n" + "As " + "veterinarian, you have access to all of the animals'"
							+ " health records. This allows you to view each animal's "
							+ "medical history and current treatments/illnesses "
							+ "(if any), and to maintain a vaccination log.");

			System.out.println();
			isValidUser = true;
			break;
		case Authentication.USER_ZOOKEEPER:
		case Authentication.USER_ZOOKEEPER1:
			System.out.println("Hello, Zookeeper!\n" + "\n" + "As zookeeper, you have access to all of the"
					+ " animals'" + " information and their" + " daily" + " monitoring logs. This "
					+ "allows you to track their " + "feeding habits, habitat conditions, and general welfare.");

			System.out.println();
			isValidUser = true;
			break;
		case Authentication.USER_ADMIN:
		case Authentication.USER_ADMIN1:
			System.out.println(
					"Hello, System Admin!\n" + "\n" + "As" + " administrator, you have access to the zoo's main "
							+ "computer system. This allows you to monitor users in " + "the system and their roles.");

			System.out.println();
			isValidUser = true;
			break;
		default:
			System.out.println("Incorrect username and/or password combination. "
					+ "You have exceeded the maximum amount of login attempts. Please try again later.");

			break;
		}

		return isValidUser;
	}

}
