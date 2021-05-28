Option 1: Authentication System

For security-minded professionals, it is important that only the appropriate people gain access to data in a computer system. This is called authentication. Once
users gain entry, it is also important that they only see data related to their role in a computer system. This is called authorization. For the zoo, you will develop
an authentication system that manages both authentication and authorization. You have been given a credentials file that contains credential information for
authorized users. You have also been given three files, one for each role: zookeeper, veterinarian, and admin. Each role file describes the data the particular role
should be authorized to access. Create an authentication system that does all of the following:

 Asks the user for a username

 Asks the user for a password

 Converts the password using a message digest five (MD5) hash

o It is not required that you write the MD5 from scratch. Use the code located in this document and follow the comments in it to perform this
operation.

 Checks the credentials against the valid credentials provided in the credentials file

o Use the hashed passwords in the second column; the third column contains the actual passwords for testing and the fourth row contains
the role of each user.

 Limits failed attempts to three before notifying the user and exiting the program

 Gives authenticated users access to the correct role file after successful authentication

o The system information stored in the role file should be displayed. For example, if a zookeeper’s credentials is successfully authenticated, then
the contents from the zookeeper file will be displayed. If an admin’s credentials is successfully authenticated, then the contents from the
admin file will be displayed.

 Allows a user to log out

 Stays on the credential screen until either a successful attempt has been made, three unsuccessful attempts have been made, or a user chooses to exit
You are allowed to add extra roles if you would like to see another type of user added to the system, but you may not remove any of the existing roles.
