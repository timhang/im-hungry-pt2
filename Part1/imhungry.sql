DROP DATABASE IF EXISTS imhungry;
CREATE DATABASE imhungry;
USE imhungry;

CREATE TABLE Sessions(
    sessionID INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    searchQuery VARCHAR(200) NOT NULL,
    numberResults INT(11) NOT NULL
);

CREATE TABLE Restaurant(
	restaurantID INT(11) PRIMARY KEY NOT NULL,
    sessionID INT(11) NOT NULL,
	restaurantName VARCHAR(250) NOT NULL,
    favoriteListOrder INT(11) NOT NULL DEFAULT -1,
    exploreListOrder INT(11) NOT NULL DEFAULT -1,
    doNotShowListOrder INT(11) NOT NULL DEFAULT -1,
    address VARCHAR(250) NOT NULL,
    driveTime VARCHAR(20) NOT NULL,
    phoneNumber VARCHAR(30) NOT NULL,
    webURL VARCHAR(250) DEFAULT 'No Web URL',
    stars DOUBLE(5,0) NOT NULL,

    price DOUBLE(5,1) NOT NULL,
    tableType VARCHAR(10) NOT NULL
);

CREATE TABLE Recipe(
	recipeID INT(11) PRIMARY KEY NOT NULL,
    sessionID INT(11) NOT NULL,
	recipeName VARCHAR(250) NOT NULL,
    favoriteListOrder INT(11) NOT NULL DEFAULT -1,
    exploreListOrder INT(11) NOT NULL DEFAULT -1,
    doNotShowListOrder INT(11) NOT NULL DEFAULT -1,
    prepTime INT(11) NOT NULL,
    cookTime INT(11) NOT NULL,
    imageURL TEXT NOT NULL,
    stars DOUBLE(5,0) NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL,
    tableType VARCHAR(10) NOT NULL
    
);

CREATE TABLE RestaurantRelations(
	sessionFkID INT (11) NOT NULL,
    restaurantFkID INT (11) NOT NULL,
    FOREIGN KEY (sessionFkID) REFERENCES Sessions(sessionID),
    FOREIGN KEY (restaurantFkID) REFERENCES Restaurant(restaurantID)
);

CREATE TABLE RecipeRelations(
	sessionFkID INT (11) NOT NULL,
    recipeFkID INT (11) NOT NULL,
    FOREIGN KEY (sessionFkID) REFERENCES Sessions(sessionID),
    FOREIGN KEY (recipeFkID) REFERENCES Recipe(recipeID)
);