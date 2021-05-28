import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class Authentication {
	public static final String USER_ZOOKEEPER = "griffin.keyes";
	public static final String USER_ADMIN = "rosario.dawson";
	public static final String USER_VETERINARIAN = "bernie.gorilla";
	public static final String USER_ZOOKEEPER1 = "donald.monkey";
	public static final String USER_ADMIN1 = "bruce.grizzlybear";
	public static final String USER_VETERINARIAN1 = "jerome.grizzlybear";

	private static final String EXIT_CHAR = "q";
	private static int tryCount = 0;
	private static int maxTryCount = 3;
	private static Map<String, String> credentials;

	public static void main(String[] args) throws Exception {

		// User credentials
		UserCredentials zookeeper = new UserCredentials(USER_ZOOKEEPER, "zookeper");
		UserCredentials zookeeper1 = new UserCredentials(USER_ZOOKEEPER1, "zookeeper1");
		UserCredentials admin = new UserCredentials(USER_ADMIN, "admin");
		UserCredentials admin1 = new UserCredentials(USER_ADMIN1, "admin1");
		UserCredentials veterinarian = new UserCredentials(USER_VETERINARIAN, "veterinarian");
		UserCredentials veterinarian1 = new UserCredentials(USER_VETERINARIAN1, "veterinarian1");

		// User credentials Map
		credentials = new HashMap<>();
		credentials.put(zookeeper.getUserName(), zookeeper.getPassword());
		credentials.put(zookeeper1.getUserName(), zookeeper1.getPassword());
		credentials.put(admin.getUserName(), admin.getPassword());
		credentials.put(admin1.getUserName(), admin1.getPassword());
		credentials.put(veterinarian.getUserName(), veterinarian.getPassword());
		credentials.put(veterinarian1.getUserName(), veterinarian1.getPassword());

		BufferedReader scnr = new BufferedReader(new InputStreamReader(System.in));

		while (tryCount < maxTryCount) {
			// username input
			System.out.println("Enter username:");
			String userName = scnr.readLine();

			// password input
			System.out.println("Enter password:");
			String password1 = scnr.readLine();

			if (userName.equalsIgnoreCase(EXIT_CHAR) || password1.equalsIgnoreCase(EXIT_CHAR)) {
				return;

			}

			if (AuthenticationHandler.isValidUser(credentials, userName, password1)) {
				// Show corresponding greeting for valid user
				AuthenticationHandler.showGreetings(userName);
			} else {
				// Handle wrong credential scenario
				System.out.println("Invalid username/password.");
				System.out.println();
				tryCount++;
			}
		}

		// Show as last before exiting
		System.out.println("You have exceeded the maximum amount of login attempts. Please try again later.");

	}

}
