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




### *Code Review:*

#### *Category One: Software Engineering/Design and Category Two: Algorithms and Data Structure*

For my Software Engineering/Design and Algorithms and Data Structure categories, the artifact I selected was my Zoo Application from my IT-145: Foundation in Application Development. This course focused on problem-solving techniques through computer science applications by incorporating key concepts of object-orienting programming (OOP), interactive applications while working with software development kits and integrated environments. My zoo application provides a user authentication system. Users had to authenticate themselves via a username and password that would be equated to those credentials within a separate file. My plan to enhance my program is to utilize my skills learned in my secure coding course to implement zero trusts which would allow for an improvement of my original software, improve efficiency and expand complexity. Therefore, for security-minded professionals, it is important that only the appropriate people gain access to data in a computer system. This is called authentication. Once users gain entry, it is also important that they only see data related to their role in a computer system. This is called authorization. For my zoo application, I will develop an authentication system that manages both authentication and authorization. I was given a credentials file that contains credential information for authorized users. I have also been given three files, one for each role: zookeeper, veterinarian, and admin. Each role file describes the data the particular role should be authorized to access. Therefore, my authentication system should do the following:

* Asks the user for a username

* Asks the user for a password

* Converts the password using a message digest five (MD5) hash

* Checks the credentials against the valid credentials provided in the credentials file

* Limits failed attempts to three before notifying the user and exiting the program

* Gives authenticated users access to the correct role file after successful authentication

* Allows a user to log out

* Therefore, stay on the credential screen until either a successful attempt has been made, three unsuccessful attempts have been made, or a user chooses to exit.

**Structure:**
My zoo authentication application does not completely and correctly implement the design. My design fails to properly verify the credentials against the valid credentials provided in the credential file and allow a user to log out willingly. After taking a wide variety of computer science courses, I have come to realize that my codes definitely do not conform to any pertinent coding standards. Starting out as a new programmer with no prior experience, I presumed my codes were well structured, consistent in style, and consistently formatted. Now after almost 3 years later, I disagree. Currently, my program has three unused and uncalled local variables. They are my Boolean expression, my password1 and password strings that needs to be removed from my application. Considering my application is completely designed in one file it does not permit for reusable components. Subsequently, it now needs to be broken down into multiple components. Those components would include an admin text file, a credential text file, a veterinarian text file, a zookeeper text file, a role class, a MD5 digest class, a MD5 Hash class, a class that reads in my file, a main class, and a README file that explains exactly what the program is designed to do. When trying to condense my program, I can definitely minimize my use of if statement blocks because I have one for each role when I can initiate an enhanced for statement that would loop through the entire list of roles rather than keep repeating the same block of code for each. I believe the use of storage isn’t sufficient due to how my program was originally designed, but when I reconstruct my application into multiple components, storage would be used more sufficiently. My codes utilize symbolic constraints and string constraints rather than magic numbers. My modules are not excessively complex, but all needs to be restructured in order to have a more friendly, readable, portable, and more professionally structured application.

**Documentation:**
My codes are not at all documented. Therefore, without any comments, if any user were to try to use my application or even change anything about it, they wouldn’t know what my intentions were when I was designing my application. So, it is very important that I do add comments where necessary within my codes to adhere to best practices to permit any user who will see my codes to truly understand what it is my application was designed to do.

**Variables:**
I have a total of 10 variables which consist of one Boolean expression and nine strings. They are: Boolean success string username password1 password zookeeper zookeeper1 veterinarian veterinarian1 admin and admin1. All designed with clear names and consistency. As for being properly defined with meaningful names, from the lack of coding experience, for this program, I thought they were meaningful. After analyzing my variables almost 3 years later, my string variables are roles which should be properly managed in its own class and called into the main method as needed. Although from the flow of this current program, all except the three unused variables have proper type consistency, but my plan is to now show how my skills as a software engineer has evolved to make my application more efficient.

**Loops and branches:**
Loops and branches allow for flow control statements to exit when a condition is met. In my zoo application I utilized the most simple decision making statements if else. I decided to execute this structure because I was going for a program application that only searched if a certain role was found and if true then grant them specific access with a success message displayed to the console, else the console would display a message revealing to the user that their credentials is wrong and to try again. Yet, I believe the logic of my statements should be more complex to show my growth. For example, use enhanced for statements to comb through the roles class rather than have them all listed. Hereby allow my program to iterate through a collection of roles more proficiently. I will even design while loops to iterate through the credentials, login attempts, and include break statements to terminate my loops and skillfully control my applications moves towards subsequent statements.

**Defense programming:**
Defense programming is one of the most important approaches towards protecting a program from adverse and unforeseen circumstances. After taking my 405 secure coding course and learning all about no trust and defense in depth, my zoo application is completely and utterly susceptible to vulnerabilities. My credentials and authentication class are the only two places within my application where I try to throw any exceptions. Otherwise, none of the roles credentials i.e. usernames nor passwords when searched through its array were tested in any fashion. Therefore, any hacker could compromise my application leading to potential harm. Another problem I found was the risk of having all the passwords which were converted to MD5 hashes were hardcoded and bedded within the application. Having such information within my source code allows a threat actor to insert their own hardcoded credentials, creating a backdoor to authorize attacks to hijack firmware, devices, systems and software. For that reason, it is imperative that I designed my application with hackers in mind by testing and validating all inputs whether it’s reading from any of my text files mentioned previously, formulate algorithms that would verify user login attempts and verify Hash passwords. As a result I would have a zoo application that I would adhere to all the coding standards, best practices, and showcase how my programming skills have matured through repetition in my time here at Southern New Hampshire University as a computer science, software engineering student.




#### *Category Three: Databases*
For my Database category, the artifact I selected was my final project, Database Management Project Report from my DAD-220: Introduction to SQL course. This specific course covered structured query language (SQL) and how such language can be used to manage database schemas, manipulate data, and analyze data. Therefore, my report showed proficiency in inserting a person in a table, altering a person in a table, update records, delete records, alter a contact list, update records in the contact list, update records again in the contact list, insert records, create an image table, create a message-image intersection table, insert records to image table, insert records to a message-image table, find all messages sent to a specific person, find the number of messages sent to every person, and lastly, find all the messages that have at least one image attached using INNER JOINs. My enhancement plan for this project is to improve the artifact by expanding its complexity to allow for more readable codes. I also plan to add more advanced MySQL concepts to show how my knowledge in this specific programming language has expanded. I can do so by adding more users, secure codes to adopt security levels to specific users which will allow them access to only the amount of data required of them.




#### *Software Design and Engineering: Zoo Authentication Enhancement*   
![Java Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/Java-1.jpg "Software Design and Engineering: Zoo Authentication Enhancement")




#### *Algorithms and Data Structure: Zoo Authentication Enhancement*
![Java Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/Java-2.jpg "Algorithms and Data Structure: Zoo Authentication Enhancement")




#### *Databases: DAD-220 MySQL Database Enhancement*
![MySQL Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/MySQL.jpg "atabases: DAD-220 MySQL Database Enhancement")



```markdown
[https://github.com/JayDob3/JayDob3.github.io/tree/main/ZooAuthentication](url) and ![Java Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/Java-1.jpg)

[https://github.com/JayDob3/JayDob3.github.io/tree/main/ZooAuthentication](url) and ![Java Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/Java-2.jpg)

[https://github.com/JayDob3/JayDob3.github.io/tree/main/DAD220UpdatedFinalProject](url) ![MySQL Image](https://raw.githubusercontent.com/JayDob3/JayDob3.github.io/main/ePortfolio%20Images/MySQL.jpg)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/JayDob3/JayDob3.github.io/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
