package API;
import java.sql.*;

public class DatabaseDriver {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/imhungry?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
	static final String USER = "root";
	static final String PASS = "1234";
	private static PreparedStatement ps = null;
	
	public static void insertRecipe(int sessionID, Recipe recipe) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("INSERT INTO Recipe (recipeID, sessionID, recipeName, favoriteListOrder, exploreListOrder, doNotShowListOrder, prepTime, cookTime, imageURL, stars, ingredients, instructions) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
	        ps.setInt(1, recipe.getId());
	        ps.setInt(2, sessionID);
	        ps.setString(3,recipe.getName());
	        ps.setInt(4,-1);
	        ps.setInt(5,-1);
	        ps.setInt(6,-1);
	        ps.setInt(7, recipe.getPrepTime());
	        ps.setInt(8, recipe.getCookTime());
	        ps.setString(9, recipe.getImage());
	        ps.setDouble(10,recipe.getStarRating());
			ps.setString(11, String.join(",", recipe.getIngredients()));
	        ps.setString(12, String.join(",", recipe.getInstructions()));

	        ps.execute();
			
//			stmt = conn.createStatement();
//		    String insertSQL = "INSERT INTO Recipe VALUES ";
//		    insertSQL += "(" + Integer.toString(recipe.getId()) + "," + 
//		    			 Integer.toString(sessionID) + ",'" + recipe.getName()
//		    			 + "',-1,-1,-1,'" + Integer.toString(recipe.getPrepTime()) 
//		    			 + "','" + Integer.toString(recipe.getCookTime())
//		    			 + "','" + recipe.getImage() + "','" + recipe.getStarRating()
//		    			 + "','" + String.join(",", recipe.getIngredients()) + "','"
//		    			 + String.join(",", recipe.getInstructions()) + "');";
//		    stmt.executeUpdate(insertSQL);		    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		         if(stmt!=null)
		            stmt.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		      }
		      try {
		         if(conn!=null)
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}
	
	public static void insertRestaurant(int sessionID, Restaurant restaurant) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			
			ps = conn.prepareStatement("INSERT INTO Restaurant (restaurantID, sessionID, restaurantName, favoriteListOrder, exploreListOrder, doNotShowListOrder, address, driveTime, phoneNumber, webURL, stars, price) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
	        ps.setInt(1, restaurant.getID());
	        ps.setInt(2, sessionID);
	        ps.setString(3,restaurant.getName());
	        ps.setInt(4,-1);
	        ps.setInt(5,-1);
	        ps.setInt(6,-1);
	        ps.setString(7, restaurant.getAddress());
	        ps.setString(8, restaurant.getTravelTime());
	        ps.setString(9, restaurant.getPhoneNumber());
	        ps.setString(10,restaurant.getURL());
			ps.setDouble(11, restaurant.getRating());
	        ps.setDouble(12, restaurant.getPriceRange());

	        ps.execute();
			
//			stmt = conn.createStatement();
//		    String insertSQL = "INSERT INTO Restaurant VALUES ";
//		    insertSQL += "(" + Integer.toString(restaurant.getID()) + "," + 
//		    			 Integer.toString(sessionID) + ",'" + restaurant.getName()
//		    			 + "',-1,-1,-1,'" + (restaurant.getAddress()) 
//		    			 + "','" + (restaurant.getTravelTime())
//		    			 + "','" + restaurant.getPhoneNumber() + "','" 
//		    			 + restaurant.getURL()
//		    			 + "'," + restaurant.getRating() + ","
//		    			 + restaurant.getPriceRange() + ")";
//		    stmt.executeUpdate(insertSQL);		    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		         if(stmt!=null)
		            stmt.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		      }
		      try {
		         if(conn!=null)
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}
	
	public static void createSession(String searchTerm, int numResults) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("INSERT INTO Sessions (sessionID, searchQuery, numberResults) VALUES (DEFAULT,?,?)");
	        ps.setString(1, searchTerm);
	        ps.setInt(2, numResults);
	        ps.execute();
			
//			stmt = conn.createStatement();
//		    String insertSQL = "INSERT INTO Sessions VALUES ";
//		    insertSQL += "('" + searchTerm + "'," + 
//		    			 Integer.toString(numResults) + ")";
//		    stmt.executeUpdate(insertSQL);		    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		         if(stmt!=null)
		            stmt.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		      }
		      try {
		         if(conn!=null)
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}

}
