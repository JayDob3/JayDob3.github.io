# *JayDob3.github.io*
## Software Engineering ePortfolio
### *CS499 Computer Science Capstone*

*My name is Janera Dobson (She/Her), preferred name Jay. I am a President's List alumni at Southern New Hampshire University, majored in Computer Science with a concentration in Software Engineering! Further down, I have thoroughly introduced myself via my Professional Self-Assessment. You will also find a couple of artifacts I have developed from my previous years at SNHU and will now be showcasing them in more complex and professionally functional applications which I advanced throughout my Computer Science Capstone course.*


## *Table of Content*
1. Professional Self-Assessment
2. Code Review
3. Software Design and Engineering: Zoo Authentication Enhancement
4. Algorithms and Data Structure: Zoo Authentication Enhancement
5. Databases: DAD-220 MySQL Database Enhancement

### *Professional Self-Assessment*

### *Code Review*

Below is a link directly to my YouTube page where I uploaded my Code Review where I addressed the following:

[x] Existing functionality: Walk through and identify what the code is, what it does, and how it works.

[x] Code Analysis: Review the code structure, look for code efficiencies, and check for comments and code documentation. Explain your findings.

[x] Look for enhancement: Walk through and explain planned enhancements. 

This video was built using [YouTube](https://www.youtube.com/watch?v=sXFcmMqBQNA).



### *Software Design and Engineering: Zoo Authentication Enhancement*
[ <img src="https://github.com/JayDob3/JayDob3.github.io/blob/main/ePortfolio%20Images/Java-1.jpg" width="750" /> ](https://github.com/JayDob3/JayDob3.github.io/commit/a6e0ce67bb84ef03711456b9f47ca7c96a0c8555)
The artifact I chose for my Software Design and Engineering category was my Zoo Application for User Authentication. This application was specifically designed to develop an authentication system for specific users to be granted access to only the data that was related to their role within a computer system. This final project was first created in my IT-145-J4460: Foundation in Application Development course. I was enrolled in this course during the 19EW4 semester (March 4, 2019-April 28, 2019). 

I selected this artifact because this was one of the very first courses that Java was introduced to me. I enjoyed it so much that I knew from this course I wanted to become a Java Developer. Although I became keen on the language, I knew that I had a lot more work to do to be proficient enough to gain reputable jobs once I was done with so. So, I knew the best thing for me to do was to take an application from the beginning of my program and enhance the knowledge I acquired over time. Therefore, the specific components of the artifact that showcase my skills and abilities in software development were to exploit simplicity by managing to separate my functions instead of nesting them in one class for reusability. I used best practices when designing simplistic constructors and commented on them to explain what and why to describe my codes and method behaviors. Lastly, I coded more enhanced security features to be implemented considering my original program had all passwords hardcoded within the program which will allow for vulnerabilities of all kinds. For example:

```
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
```

Reflecting on the process of enhancing and modifying my artifact, I learned how to truly focus on writing clean efficient codes and how to implement what I learned in my Secure Coding course to protect my application. I learned how to make my program complex but simplistic and portable. How my artifact was improved by including an admin text file, a credential text file, a veterinarian text file, a zookeeper text file, a role class, an MD5 digest class, an MD5 Hash class, a class that reads in my file, main class, and a README file that explains exactly what the program is designed to do. I needed to add comments where necessary within my codes to adhere to best practices to permit any user who will see my codes to truly understand my application. Lastly, I needed to design my application with hackers in mind by testing and validating all inputs whether it's reading from any of my text files mentioned previously, formulate algorithms that would verify user login attempts, and verify Hash passwords. As a result, I would have a Zoo Application that would adhere to all the coding standards, best practices, and showcase how my programming skills have matured through repetition in my time here at Southern New Hampshire University as a Computer Science, Software Engineering student.



### *Algorithms and Data Structure: Zoo Authentication Enhancement*
[ <img src="https://github.com/JayDob3/JayDob3.github.io/blob/main/ePortfolio%20Images/Java-2.jpg" width="750" /> ](https://github.com/JayDob3/JayDob3.github.io/commit/a6e0ce67bb84ef03711456b9f47ca7c96a0c8555)
The artifact I chose for my Algorithm and Data Structure category again was my Zoo Application for User Authentication. This application was specifically designed to develop an authentication system for specific users to be granted access to only the data that was related to their role within a computer system. This final project was first created in my IT-145-J4460: Foundation in Application Development course. I was enrolled in this course during the 19EW4 semester (March 4, 2019-April 28, 2019).

I selected this artifact because I wanted to show how my algorithm skills have developed over the years. I knew when I first developed the program that it did not function well and certain tasks that needed to be implemented did not work at all. Therefore, I wanted to consistently showcase my Java programming skills and enhance my program almost from scratch. The specific component of the artifact that showcases my skills and abilities in software development was my use of algorithms I developed to validate if the user credentials are valid. I completed this within an AuthenticationHandler class which validates whether a credential is valid or is invalid with the use of Boolean statements, if-try-catch block, and when it is valid my switch statements will display the correct message. Secondly, through the use of while and if-else statements in my main method to allow the user to input their username and password, but iterate through a loop to search for the correct credentials, exit if wanted to willingly, and exit if the credentials failed to be entered after three times keeping Big O in mind. For example:

```
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
```

Reflecting on the process of enhancing and modifying my artifact, was very informational. The reason being, because I was able to go back through all I learned in school and outside of school on my own to put together a professionally functional application. I enjoyed taking my application from a low-level beginner Java developer to a more proficient level. I'm sure there are other factors that I can imply to continuously enhancing the program, but I am satisfied with how my program came about after subjecting all my knowledge learned. The one challenge I faced was how to implement the algorithm to ensure my application did not continuously run without exiting the program. This was an issue when I first created it, but then after doing some research it all came together. My artifact was improved by formulating algorithms that would verify user login attempts, verify Hash passwords, try-catch credentials, and throw exceptions if needed.



### *Databases: DAD-220 MySQL Database Enhancement*
[ <img src="https://github.com/JayDob3/JayDob3.github.io/blob/main/ePortfolio%20Images/MySQL.jpg" width="750" /> ](https://github.com/JayDob3/JayDob3.github.io/commit/3b4999437b962e8f5f089c767278d2cf2f48d282)
The artifact I chose for my Database category was my Messaging Application to assume the role of a newly hired database engineer for an application startup. I was asked to enhance the database to support a couple of new features in the app through the use of structured query language (SQL) to implement CRUD (Create, Read, Update, and Delete) to manage database schemas, manipulate data, and analyze data. This application was specifically designed to show proficiency in inserting a person in a table, altering a person in a table, update records, delete records, alter a contact list, update records in the contact list, update records again in the contact list, insert records, create an image table, create a message-image intersection table, insert records to image table, insert records to a message-image table, find all messages sent to a specific person, find the number of messages sent to every person, and lastly, find all the messages that have at least one image attached using INNER JOINs. This final project was first created in my DAD-220-R5643: Introduction to SQL course. I was enrolled in this course during the 19EW5 semester (May 6, 2019-June 30, 2019).

I selected this artifact because I do not utilize SQL and it's a language, I have very little experience using. The components of the artifact which would showcase my skills and abilities in software development are how I maintained, created, and retrieved information from a database in a table of rows and columns. Doing so will illustrate how I can use databases and SQL to distribute large datasets by accessing and retrieving data from innumerable databases once I reconstruct the entire program from scratch. The artifact was improved by creating advanced discrete tables for the database, add a new value to the person table called age, uploading the CSV file within my artifact, and add security factors where a user can log in but only is granted specific privileges and inhibit others. I'll also implement how I can accidentally give a user access but then revoke and then drop them. Overall, the artifact was improved by needing to completely figure out solutions on how to correctly implement the messaging app just as it was originally designed on Codio with some predefined statements. For example:

```
# Create csv file
LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\contact_list.csv'

.headers on
.mode csv
.output data.csv
SELECT connection_id,
		person_id,
		contact_id,
		favorite
FROM messaging.contact_list;
.quit
```

Reflecting on the process of enhancing my artifact, it was difficult to start. I was unable to utilize my virtual desktop provided by SNHU called Apporto. Therefore, trying to download MongoDB and MySQL on my MacBook was my next option and then that didn't work out for me. So, I did some research and seen that I could reconstruct my entire Messaging App via Sublime Text and be able to save it as a .sql file. I also utilized tutors to help me construct my artifact because after long hours of watching YouTube and reading up on how to construct my app, I decided to get some professional help and it worked! Even though it took some time and patients to get my app up and going, I appreciated the struggle because I did enjoy learning about MySQL a few years back, but relearning about MySQL all over again and even new advanced statements were worth it all.


