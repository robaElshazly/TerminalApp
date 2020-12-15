**GitHub Repository Link:**https://github.com/robaElshazly/TerminalApp

**Software Development Plan**

- **What the Application will do:**

  This is an online school app that gives users a variety of online courses options to enroll in.
- **The problem it will Solve:**

  The app will help keep track of the courses users previously enrolled in.
  It will also show them information about evey course to help them make a decision.
- **Target Audience:**
Any one interested in online learning.
- **How To Use the App:**
This app can be used by running run.sh file. After that, clear instructions will prompt the user on the next steps of usage. 

**Features of the App**

1- **Welcoming Message:** The app will show a welcoming message in the start with the name of the user. The name of the user can be entered in by command line arguments or answering the question in the beginning.

2- **Enrolling in a Course:** The app will enable the user to enroll in a course and add the course to the list of enrolled courses.

3- **Unenrolling in a Course:** The app will also enable the user to unenroll in a course.

4- **Display information of a course:** Also the user will be able to display the information of each course like duration, coast, price and syllabus.


**How the user will find out how to use the app**

After the welcoming message the user will be givin a message that says "If you want to know how to use the app please read the help file in doc folder"

**How user will interact and use each feature**


1- **To run the program and see the welcoming message with your name:**
To run the program ,You can either :
- Run the below command in terminal followed by your first and last name.
```
run.sh <your first name> <your last name>
```
- Or you can just run the file run.sh and a question asking you about your first and last name will show up. you then should type in your name.

*Errors expected and how they are handled*

Notice that if you skip and not type anything. you will receive an error message saying "please type a valid name".

If only one name is entered or more than two names are entered, the program will run as no arguments are entered and will aske about first and last name. 


2- **To Enrol in a Course:**

After running the app like mentioned in the previous piont, you will then have three options to choose from: show courses list, show enrollments and exit. 
To enroll you need to: 
    1.Choose *"show courses list"* option using the arrow keys and enter button, and a list of available courses will then appear.
    2.Use arrow keys to choose a course from the list.
    3. After choosing a course, another list will appear with the options:Show course details, Enrol, go back, Exit.
    4. To enrol, choose the option "Enrol" using arrow keys.
    5. If you choose "go back", you will go back to the courses list.
    6. If you choose "exit", you eill end the program.
    7. After enrolling you will go back automatically to the first list which is:  show courses available, show enrollments and exit. And the course will be added to enrollments list.

*Errors expected and how they are handled*

Enrolling in a course that they already enrolled in. This will be handled by not adding the course to enrollments list and instead, a message informing the user about course already enrolled will be displayed.

3- **To Show Course Details:**

After running the App, you will then have three options to choose from: show courses available, show enrollments and exit. To show details of a course you need to: 

1- Choose *"show courses available"* option using the arrow keys and enter button, and a list of available courses will then appear.

2- Use arrow keys to choose a course from the list.

3- After choosing a course, another list will appear with the options:Show course details, Enroll, Exit.

4- To see details of a course, choose the option "Show course details" using arrow keys.

5- After showing details 

*Errors expected and how they are handled*

Since the user is choosing a course from a displayed list that already exist using tty-prompt gem, there will be not expected errors to be handled.

4- **To Unenroll in a Course**

After running the App, you will then have three options to choose from: show courses available, show enrollments and exit. To unenrol you need to:

  1- Choose "show enrollments" option using arrow keys and enter button.

  2- A list of courses you are enrolled in will then appear and also an option to go back.

  3- Choose the course you need to unenroll from using arrow keys.

  4- A confirmation message about unenrolling will appear with yes or no options.

  5- If you choose yes, your course will be deleted from your enrollment list and  you will go back automatically
  to the first list which is:  show courses available, show enrollments and exit.

  6- If you choose no, you will go back to enrollment list.
