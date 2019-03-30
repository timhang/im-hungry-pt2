DROP DATABASE IF EXISTS imhungry;
CREATE DATABASE imhungry;
USE imhungry;

CREATE TABLE Sessions(
    sessionID INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    searchQuery VARCHAR(200) NOT NULL
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
    stars FLOAT(5,0) NOT NULL,

    price INT(5) NOT NULL
);

CREATE TABLE Recipe(
	recipeID INT(11) PRIMARY KEY NOT NULL,
    sessionID INT(11) NOT NULL,
	recipeName VARCHAR(250) NOT NULL,
    favoriteListOrder INT(11) NOT NULL DEFAULT -1,
    exploreListOrder INT(11) NOT NULL DEFAULT -1,
    doNotShowListOrder INT(11) NOT NULL DEFAULT -1,
    prepTime VARCHAR(20) NOT NULL,
    cookTime VARCHAR(20) NOT NULL,
    imageURL TEXT NOT NULL,
    stars DOUBLE(5,0) NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL
    
);

CREATE TABLE RestaurantRelations(
	sessionFkID INT (11),
    restaurantFkID INT (11),
    FOREIGN KEY (sessionFkID) REFERENCES Sessions(sessionID),
    FOREIGN KEY (restaurantFkID) REFERENCES Restaurant(restaurantID)
);

CREATE TABLE RecipeRelations(
	sessionFkID INT (11),
    recipeFkID INT (11),
    FOREIGN KEY (sessionFkID) REFERENCES Sessions(sessionID),
    FOREIGN KEY (recipeFkID) REFERENCES Recipe(recipeID)
);