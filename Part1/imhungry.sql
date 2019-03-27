DROP DATABASE IF EXISTS imhungry;
CREATE DATABASE imhungry;
USE imhungry;

CREATE TABLE Restaurant(
	placeID VARCHAR(200) PRIMARY KEY NOT NULL,
	restaurantName VARCHAR(250) NOT NULL,
    inFavoriteList INT(1) NOT NULL DEFAULT 0,
    inExploreList INT(1) NOT NULL DEFAULT 0,
    inDoNotShowList INT(1) NOT NULL DEFAULT 0,
    address VARCHAR(250) NOT NULL,
    driveTime VARCHAR(20) NOT NULL,
    phoneNumber VARCHAR(30) NOT NULL,
    webURL VARCHAR(250) DEFAULT 'No Web URL',
    stars DOUBLE(5,0) NOT NULL,
    price INT(5) NOT NULL
);

CREATE TABLE Recipe(
	recipeURL VARCHAR(250) PRIMARY KEY NOT NULL,
	recipeName VARCHAR(250) NOT NULL,
    inFavoriteList INT(1) NOT NULL DEFAULT 0,
    inExploreList INT(1) NOT NULL DEFAULT 0,
    inDoNotShowList INT(1) NOT NULL DEFAULT 0,
    prepTime VARCHAR(20) NOT NULL,
    cookTime VARCHAR(20) NOT NULL,
    imageURL TEXT NOT NULL,
    stars DOUBLE(5,0) NOT NULL,
    ingredients TEXT NOT NULL,
    steps TEXT NOT NULL
);