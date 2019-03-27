DROP DATABASE IF EXISTS im_hungry;
CREATE DATABASE im_hungry;

USE im_hungry;

CREATE TABLE Restaurants(
	_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	_name VARCHAR(16) NOT NULL UNIQUE,
    _address VARCHAR(64) NOT NULL,
    _website CHAR (32) NOT NULL,
    _phone CHAR (16) DEFAULT 1
    );
    
INSERT INTO Restaurants(_name, _address, _website, _phone)
	VALUES
		("Trojan Pizza", "310 Jefferson Ave", "rest.com", "(323) 213-3212"), 
		("Pizza Hut", "3120 McCarthyAve", "resto.com", "(323) 213-2312"), 
        ("Olive Garden", "330 Jefferson Ave", "resast.com", "(333) 213-3212"), 
        ("Chick Fil A", "320 Jefferson Ave", "rdsdst.com", "(323) 553-3212"), 
		("Paneros", "3120 Parkside Ave", "asraest.com", "(213) 563-3212");

CREATE TABLE Recipes(
	_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	_name VARCHAR(16) NOT NULL UNIQUE,
    _cookTime VARCHAR(32) NOT NULL,
    _prepTime VARCHAR (32) NOT NULL,
    _directions TEXT(65536)
    );
    
INSERT INTO Recipes(_name, _cookTime, _prepTime, _directions)
	VALUES
		("Cookies", "22 min", "10 min", "Call a cheff and ask him to tell you what to do"), 
		("Apple Sauce", "2h", "15 min", "Call a cheff and ask him to tell you what to do"), 
        ("Soup", "2h", "22 min", "Call a cheff and ask him to tell you what to do"),
        ("Pizza", "1h", "15 min", "Call a cheff and ask him to tell you what to do"),
		("Chicken Sandwich", "5h", "25 min", "Call a cheff and ask him to tell you what to do");
    
CREATE TABLE Queries(
	_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	_query VARCHAR(16) NOT NULL,
    _resultType VARCHAR(32) NOT NULL,
    _fkId VARCHAR (32) NOT NULL
    );
    
INSERT INTO Queries(_query, _resultType, _fkId)
	VALUES
		("Pizza", "Restaurant", 1),
        ("Pizza", "Restaurant", 2),
        ("Pizza", "Restaurant", 3),
        ("Pizza", "Restaurant", 5),
        ("Pizza", "Recipe", 4),
		("Desert", "Restaurant", 3),
        ("Desert", "Restaurant", 5),
        ("Desert", "Recipe", 1),
        ("Desert", "Recipe", 2);

CREATE TABLE List_Items(
	_itemId INT(11) PRIMARY KEY AUTO_INCREMENT,
	_list CHAR (32) NOT NULL,
    _itemType VARCHAR(64) NOT NULL,
    _index INT (6) DEFAULT 1,
    _fkId INT(9)
    );
    
    
INSERT INTO List_Items(_list, _itemType, _index, _fkId)
	VALUES
		("Favorites", "Restaurant", 1, 1), 
        ("Favorites", "Recipe", 2, 2), 
		
		("To Explore", "Recipe", 1, 1), 
        ("To Explore", "Restaurant", 2, 2), 
		("To Explore", "Recipe", 3, 3),
        ("To Explore", "Recipe", 4, 4), 
		("To Explore", "Restaurant", 5, 5);
        
        
            
-- SELECT * FROM Restaurants;
-- SELECT * FROM Recipes;

SELECT * FROM Queries 
	JOIN Restaurants ON Queries._fkId=Restaurants._id
    WHERE Queries._resultType="Restaurant" AND Queries._query="Pizza"
    
    UNION
    
    SELECT * FROM Queries 
	LEFT JOIN Recipes ON Queries._fkId=Recipes._id
    WHERE Queries._resultType="Recipe" AND Queries._query="Pizza"
