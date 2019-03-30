package API;
import java.sql.*;

public class DatabaseDriver {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/imhungry";
	static final String USER = "root";
	static final String PASS = "1234";
	
	public static void insertRecipe(int sessionID, Recipe recipe) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			stmt = conn.createStatement();
		    String insertSQL = "INSERT INTO Recipe VALUES ";
		    insertSQL += "(" + Integer.toString(recipe.getId()) + "," + 
		    			 Integer.toString(sessionID) + "," + recipe.getName()
		    			 + ",-1,-1,-1," + Integer.toString(recipe.getPrepTime()) 
		    			 + "," + Integer.toString(recipe.getCookTime()) + ","
		    			 + "," + recipe.getImage() + ", " + recipe.getStarRating()
		    			 + "," + recipe.getIngredients().toString() + ","
		    			 + recipe.getInstructions().toString() + ")";
		    stmt.executeUpdate(insertSQL);		    			 
		    
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
			stmt = conn.createStatement();
		    String insertSQL = "INSERT INTO Recipe VALUES ";
		    insertSQL += "(" + Integer.toString(restaurant.getID()) + "," + 
		    			 Integer.toString(sessionID) + "," + restaurant.getName()
		    			 + ",-1,-1,-1," + (restaurant.getAddress()) 
		    			 + "," + (restaurant.getTravelTime()) + ","
		    			 + "," + restaurant.getPhoneNumber() + ", " 
		    			 + restaurant.getURL()
		    			 + "," + restaurant.getRating() + ","
		    			 + restaurant.getPriceRange() + ")";
		    stmt.executeUpdate(insertSQL);		    			 
		    
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
