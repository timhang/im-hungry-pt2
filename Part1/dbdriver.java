package models;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;

// Manages lists that recipes and restaurants are a part of by storing relevant properties on these items in MySQL DB
public class ListManagement {
    private static final String USER = "root";
    private static final String PASSWORD = "Testing!";
    private static final String DATABASE_CONNECTION = String.format(
            "jdbc:mysql://localhost:3306/imhungry?user=%s&password=%s&useSSL=false&allowPublicKeyRetrieval=true",
            USER, PASSWORD
    );
    private static String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
    private static final String RESTAURANT = "Restaurant";
    private static final String PLACE_ID = "placeID";
    private static final String RESTAURANT_NAME = "restaurantName";
    private static final String LIST_TYPE = "listType";
    private static final String ADDRESS = "address";
    private static final String DRIVE_TIME = "driveTime";
    private static final String WEB_URL = "webURL";
    private static final String STARS = "stars";
    private static final String PRICE = "price";
    private static final String PHONE_NUMBER = "phoneNumber";
    private static final String RECIPE = "Recipe";
    private static final String RECIPE_NAME = "recipeName";
    private static final String PREP_TIME = "prepTime";
    private static final String COOK_TIME = "cookTime";
    private static final String IMAGE_URL = "imageURL";
    private static final String INGREDIENTS = "ingredients";
    private static final String STEPS = "steps";
    private static final String RECIPE_URL = "recipeURL";

    // Sets driver class--useful for forcing exceptions for testing
    public static void setDriverClass(String name) {
        ListManagement.DRIVER_CLASS = name;
    }

    public static String getDriverClass(){
        return ListManagement.DRIVER_CLASS;
    }

    //insert restaurant into database
    public static void insertRestaurant(String placeID) {
        Restaurant newRestaurant = Restaurant.fromPlaceID(placeID);
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlInsertStatement = String.format("INSERT INTO %s (%s, %s, %s, %s, %s, %s, %s, %s, %s) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);",
                    RESTAURANT, PLACE_ID, RESTAURANT_NAME, LIST_TYPE, ADDRESS, DRIVE_TIME, WEB_URL, STARS, PRICE, PHONE_NUMBER);
            preparedStatement = connection.prepareStatement(sqlInsertStatement);
            preparedStatement.setString(1, newRestaurant.getPlaceID());
            preparedStatement.setString(2, newRestaurant.getName());
            preparedStatement.setString(3, newRestaurant.getListType().name());
            preparedStatement.setString(4, newRestaurant.getAddress());
            preparedStatement.setString(5, newRestaurant.getDriveTime());
            preparedStatement.setString(6, newRestaurant.getWebURL());
            preparedStatement.setDouble(7, newRestaurant.getStars());
            preparedStatement.setInt(8, newRestaurant.getPrice());
            preparedStatement.setString(9, newRestaurant.getPhoneNumber());

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
    }

    //changes a restaurant's listType
    public static void changeRestaurantListType(String placeID, ListType listType) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlUpdateStatement = String.format("UPDATE %s SET %s = ? WHERE %s = ?", RESTAURANT, LIST_TYPE, PLACE_ID);
            preparedStatement = connection.prepareStatement(sqlUpdateStatement);
            preparedStatement.setString(1, listType.name());
            preparedStatement.setString(2, placeID);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
    }

    //returns an arrayList of restaurants with a given listType from the database
    public static ArrayList<Restaurant> getRestaurantSavedLists(ListType listType) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<Restaurant> restaurants = new ArrayList<Restaurant>();
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlSelectStatement = String.format("SELECT %s, %s, %s, %s, %s, %s, %s, %s FROM %s WHERE %s = ?",
                    PLACE_ID, RESTAURANT_NAME, ADDRESS, DRIVE_TIME, PHONE_NUMBER, WEB_URL, STARS, PRICE, RESTAURANT, LIST_TYPE);
            preparedStatement = connection.prepareStatement(sqlSelectStatement);
            preparedStatement.setString(1, listType.name());
            resultSet = preparedStatement.executeQuery();

            //looping through restaurants with the input listType
            while(resultSet.next()) {
                Restaurant tempRestaurant = new Restaurant(resultSet.getString(RESTAURANT_NAME), resultSet.getString(ADDRESS),
                        resultSet.getString(DRIVE_TIME), resultSet.getString(WEB_URL), resultSet.getString(PHONE_NUMBER),
                        resultSet.getString(PLACE_ID), resultSet.getDouble(STARS), resultSet.getInt(PRICE));
                restaurants.add(tempRestaurant);
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
        return restaurants;
    }

    //returns a restaurant's ListType from the database
    public static ListType getListTypeFromRestaurant(String placeID){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ListType restaurantListType = ListType.NONE;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlSelectStatement = String.format("SELECT %s FROM %s WHERE %s = ?", LIST_TYPE, RESTAURANT, PLACE_ID);
            preparedStatement = connection.prepareStatement(sqlSelectStatement);
            preparedStatement.setString(1, placeID);
            resultSet = preparedStatement.executeQuery();

            if(resultSet.next()) {
                restaurantListType = ListType.valueOf(resultSet.getString(LIST_TYPE));
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
        return restaurantListType;
    }

    //inserts a recipe into the database
    public static void insertRecipe(Recipe newRecipe){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlInsertStatement = String.format("INSERT INTO %s (%s, %s, %s, %s, %s, %s, %s, %s, %s) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);",
                    RECIPE, RECIPE_NAME, LIST_TYPE, PREP_TIME, COOK_TIME, IMAGE_URL, STARS, INGREDIENTS, STEPS, RECIPE_URL);
            preparedStatement = connection.prepareStatement(sqlInsertStatement);

            preparedStatement.setString(1, newRecipe.getName());
            preparedStatement.setString(2, newRecipe.getListType().name());
            preparedStatement.setString(3, newRecipe.getPrepTime());
            preparedStatement.setString(4, newRecipe.getCookTime());
            preparedStatement.setString(5, newRecipe.getImageURL());
            preparedStatement.setDouble(6, newRecipe.getStars());
            preparedStatement.setString(9, newRecipe.getRecipeURL());
            //splitting recipe's array of steps and ingredients into one string
            String ingredientStr = String.join(";", newRecipe.getIngredients());
            preparedStatement.setString(7, ingredientStr);
            String instructionStr = String.join(";", newRecipe.getSteps());
            preparedStatement.setString(8, instructionStr);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
    }

    //changes a ListType of a recipe
    public static void changeRecipeListType(Recipe recipe, ListType listType) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlUpdateStatement = String.format("UPDATE %s SET %s = ? WHERE %s = ?", RECIPE, LIST_TYPE, RECIPE_URL);
            preparedStatement = connection.prepareStatement(sqlUpdateStatement);

            preparedStatement.setString(1, listType.name());
            preparedStatement.setString(2, recipe.getRecipeURL());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
    }

    //returns an arrayList of restaurants with a given listType from the database
    public static ArrayList<Recipe> getRecipeSavedLists(ListType listType) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<Recipe> recipes = new ArrayList<Recipe>();
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlSelectStatement = String.format("SELECT %s, %s, %s, %s, %s, %s, %s, %s, %s FROM %s WHERE %s = ?",
                    RECIPE_NAME, LIST_TYPE, PREP_TIME, COOK_TIME, IMAGE_URL, STARS, INGREDIENTS, STEPS, RECIPE_URL, RECIPE, LIST_TYPE);
            preparedStatement = connection.prepareStatement(sqlSelectStatement);
            preparedStatement.setString(1, listType.name());
            resultSet = preparedStatement.executeQuery();

            //looping through restaurants with the input listType
            while(resultSet.next()) {
                String ingredientStr = resultSet.getString(INGREDIENTS);
                String instructionStr = resultSet.getString(STEPS);
                String[] ingredients = ingredientStr.split(";");
                String[] instructions = instructionStr.split(";");

                //constructing recipe
                Recipe newRecipe = new Recipe(resultSet.getString(RECIPE_NAME), resultSet.getString(PREP_TIME), resultSet.getString(COOK_TIME),
                        resultSet.getDouble(STARS), ingredients, instructions, resultSet.getString(RECIPE_URL), resultSet.getString(IMAGE_URL));
                newRecipe.setListType(ListType.valueOf(resultSet.getString(LIST_TYPE)));
                recipes.add(newRecipe);
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
        return recipes;
    }

    //returns a recipe's ListType from the database
    public static ListType getListTypeFromRecipe(String recipeURL){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ListType recipeListType = ListType.NONE;
        try {
            Class.forName(DRIVER_CLASS);
            connection = DriverManager.getConnection(DATABASE_CONNECTION);
            String sqlSelectStatement = String.format("SELECT %s FROM %s WHERE %s =?", LIST_TYPE, RECIPE, RECIPE_URL);
            preparedStatement = connection.prepareStatement(sqlSelectStatement);
            preparedStatement.setString(1, recipeURL);
            resultSet = preparedStatement.executeQuery();

            if(resultSet.next()) {
                recipeListType = ListType.valueOf(resultSet.getString(LIST_TYPE));
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        }   catch (Exception e) {
            System.out.println(e.getLocalizedMessage());
        }
        return recipeListType;
    }
}