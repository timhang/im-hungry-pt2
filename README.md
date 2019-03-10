# "I'm Hungry" Web Application Implementation

Description:
This web application allows the user to search for restaurants and recipes information based on the entered dish name/cuisine type. It also allows the user to add resulting restaurant and recipes to favorites list, to explore list, and do not show list and future search results would be influenced by the items in those lists. Read the wiki for screenshots and more detailed documentation of its functionalities. 

Contributors:
- Farrell Hohman
- Sean Lissner
- Haiyu Tian
- Alex Volcy
- Weihang Zhang


Running the project

Import:
- Clone this repository and keep in mind its directory in your computer since we will need it later when importing
- Open Eclipse, then navigate to File -> Import
- Find Maven in the list, then open the drop down, select "Existing Maven Projects"
- Click Browse... and select the directory of the clone (~/.../im-hungry)
- Make sure the checkbox next to pom.xml is checked, then click finish
- This project used the JRE 1.8 System library, so make sure you have an equal or newer version of JRE installed on your system.

Replacing empty API key fields:
- Locate ImageAPI.java, RecipeAPI.java, RestAPI.java files in the package API inside src/main/java/
- Replace the API keys with your own (Google custom search for ImageAPI, Spoonaculer for RecipeAPI, Zomato and Google Map for RestAPI)
- Save the changes

Server Setup:
- Make sure you install Tomcat 8.0 or above on your system and run it on port 8080
- Locate Tomcat's installation directory, and locate a folder called "webapps"
- We will need the directory of this tomcat/webapps folder when we export this project

Export to WAR file:
- Right click on the project ImHungry in Eclipse Package Explorer, find Export -> WAR File
- In the pop-up window, click Browse... and select the tomcat/webapps folder mentioned above as destination

Run:
- Open a browser, preferably Google Chrome, and copy this into the search bar http://localhost:8080/ImHungry/searchPage.html
- You are now on the home page of I'm Hungry!

