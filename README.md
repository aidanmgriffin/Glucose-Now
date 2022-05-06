# AADJW-DiabetesProject

  This code is the beginning of our group’s diabetes monitoring app. So far we have created the class outlines and a menu system that will show up upon opening the app. The goal is for all the pieces to fit together to create a functioning app the is a tool for diabetes management and that it adds a sense of security and confidence for users. It also will hopefully create a sense of trust between doctors and patients in managing diabetes for a better quality of life.

  Right now, many of the classes are connected and use each other. Our main class that everything else branches off of is the Database class. Database directly uses DailyJournal and User. DailyJournal directly uses GaitMonitor, and TemperatureMonitor. Additonally, FoodJournal is a part of the DailyJournal. Branching off of User are the Patient and Doctor classes. All of this information that is collected is stored in the database but can be easily accessed by all the necessary portions of the program due to how they are connected.
  
  Our original plan was to use the information below to make our app. As we did further research, we discovered that using XCode and the language Swift would be more beneficial. It allows us to more easily develop an app. It also has much less need for implementation of extra libraries that we aren’t familiar with. However, the original plan is provided below to help explain the thought process behind our program and how it came to be the way it is now.

## Key Tools
- XCODE, an integrated development environment(IDE), will be used to write source code for our application.
  - Use reason: We are all familiar that coding in Swift with XCODE is useful for IOS development, which makes it a good choice for our team. XCODE was also chosen for our diabetes application because It supports a large variety of libraries and tools that will aid our product. Visual Studio allows us to code in Swift, our team's preferred coding language. XCODE also has built-in software for mobile development in Swift, allowing us to more seamlessly make the application.
- Github is being used as our primary version control system to track different versions of our source code.
  - Use reason: Having an external decentralized source is very beneficial as it removes the risk of us losing our code or relying on one person to supply the main branch. It allows us to keep track of our versions so we can roll back if we make mistakes, and allows the professor and TA’s to easily track our progress. It also allows us to easily share code so we can test each part.
- Google Docs is being used as our primary tool for writing documentation.
  - Use reason: Documentation is needed for end-users to be able to use the app effectively. Google Docs has many tools that make choosing it a good choice, such as autosaving making it easy to edit, as well as allowing the insertion of images. Google Docs also has many different ways to save our files, which enables us to send the correct file type to users. Google Docs is also a great way for us to share documents, allowing us to make sure everything is being documented properly.

## Technologies
- Github is an important piece of technology to use because it allows for collaboration without interfering with previous versions of the code. It is also a great tool for open source projects involving multiple people working together.  Github will also monitor and track all the changes that are made along the way and save each version. GitHub also has a problem tracker which is useful in discovering potential errors in the code. Finally, it also has a documentation feature that may be useful.
- Visual C++ and Cmake will be useful for creating the actual app. We will use C++ to create the app because it has several libraries that can be accessed to aid in better app production. This is the language that the group is most familiar with and will be best for efficiently creating a great final product. 
WinRT (Windows Runtime) is another essential technology in this project. While this works in conjunction with C++, it is an important and necessary library that will allow this library to access the modern Windows API. This combination, (C++/CMake/WinRT) is the newly updated and more recommended version of C++/CX for creating applications.  
- XAML is a markup language that works with C++.  It is a more efficient way of programming because it is considered to be more succinct. This will also help us create better graphical user interfaces for the users of the diabetes app. This may present itself in the form of better notifications or better visuals. XAML is also a Microsoft creation and will easily integrate with the C++ code and Visual Studios. This smooth combination will allow us to create the best possible end-user experience regarding the app.  

## Process Model
We have chosen to employ the iterative process model. That entails performing the following tasks in incremental phases:
- Analysis: Collect requirements and specifications of the software.
- Design: Deliberate high-end function of the software.
- Code: Write the software:
- Test: Deploy and check software for errors.

## Team
[Alexis](https://github.com/AlexisHinton)

[Aidan](https://github.com/aidanmgriffin)

[David]

[Jackson]

[Will](https://github.com/WalkeWill)

Software Usage guide:
Homescreen functions:
Log Food, Log Exercise, Take Measurement, Account, Report view

Log Food: 
1. Add food item name through keyboard. ex. "Taco Salad"
2. Enter calories amount for the Food item. ex. "350"
3. Click submit to add item to previously logged foods and calories

Log Exercise:
1. Add Exercise type. ex. "Running" or "Rowing"
2. Enter minutes spent exercising. ex. "30"
3. Enter calories burned from exercise. ex. "150"
4. Click submit to add exercise to previously logged exercises and calories

Take Measurement:
1. Enter glucose levels in mg/dL. ex. "100"
2. Enter temperature in degrees. ex. "98"
3. Click submit to save measurement

Account:
1. Enter Daily Calorie Goal in calories. ex. "2000"
2. Enter Daily Exercise Goal in minutes. ex. "60"

## Future Updates
This repository will be updated with continued work on the project. 

