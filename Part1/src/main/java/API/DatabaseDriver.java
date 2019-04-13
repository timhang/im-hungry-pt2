package API;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class DatabaseDriver {
	static enum lists{
		favorites,
		toExplore,
		doNotShow
	}
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/imhungry?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
	static final String USER = "root";
	static final String PASS = "welcometousc";
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	public static void insertRecipe(int sessionID, Recipe recipe) {
		Connection conn = null;
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
				    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}
	
	public static void insertRestaurant(int sessionID, Restaurant restaurant) {
		Connection conn = null;
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
					 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}
	
	public static void createSession(String searchTerm, int numResults) {
		Connection conn = null;
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
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
	}
	
	public static JSONArray getSessions() throws Exception{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("SELECT * FROM Sessions");
	        rs = ps.executeQuery();
	        JSONArray newArray = new JSONArray();
	        if(rs.next()==false) {

				return null;
				//System.out.println("login state: "+ state);
			} else {
				do {
					//JSONObject;
					//int count = rs.getInt("count");
					String searchTerm;
					int numResults;
					searchTerm = rs.getString("searchQuery");
					numResults = rs.getInt("numberResults");
					JSONObject jsonObj = new JSONObject();
					jsonObj.put("searchTerm", searchTerm);
					jsonObj.put("integer", Integer.toString(numResults));
					newArray.put(jsonObj);
					

				} while(rs.next());
				return newArray;
			}
	        	    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
		return null;
	}
	
	public static void sessionRecipes(ArrayList<Integer> recipeIds) throws Exception{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("SELECT * FROM Sessions ORDER BY sessionID DESC LIMIT 1");
			rs = ps.executeQuery();
			rs.first();
			int sessionId = rs.getInt("sessionID");
			
			for(int i = 0; i<recipeIds.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO RecipeRelations (sessionFkID, recipeFkID) VALUES (?,?)");
				ps.setInt(1,sessionId);
				ps.setInt(2,recipeIds.get(i));
		        ps.execute();
	        
			}
	        
	        	    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }

	}
	
	public static void sessionRestaurants(ArrayList<Integer> restaurantIds) throws Exception{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			//Getting the last session Id
			ps = conn.prepareStatement("SELECT * FROM Sessions ORDER BY sessionID DESC LIMIT 1");
			rs = ps.executeQuery();
			rs.first();
			int sessionId = rs.getInt("sessionID");
			
			for(int i = 0; i<restaurantIds.size(); i++) {
				ps = conn.prepareStatement("INSERT INTO RestaurantRelations (sessionFkID, restaurantFkID) VALUES (?,?)");
				ps.setInt(1,sessionId);
				ps.setInt(2,restaurantIds.get(i));
		        ps.execute();
	        
			}
	        
	        	    			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }

	}
	
	public static int GetInsertionIndex(Connection connection, lists listName) throws SQLException {
		String arg = "";
		if(listName == lists.favorites) {
			arg = "favoriteListOrder";
		} else if (listName == lists.toExplore) {
			arg = "exploreListOrder";
		} else if (listName == lists.doNotShow) {
			arg = "doNotShowListOrder";
		} else if (listName == null) {
			return -1;
		}
		ps = connection.prepareStatement("SELECT COUNT(" + arg + ") as index1 FROM Recipe AND Recipe WHERE favoriteListOrder!=-1");
		rs = ps.executeQuery();
		rs.first();
		int index1 = rs.getInt("index1");
		
		ps = connection.prepareStatement("SELECT COUNT(" + arg + ") as index2 FROM Recipe AND Restaurant WHERE favoriteListOrder!=-1");
		rs = ps.executeQuery();
		rs.first();
		int index2 = rs.getInt("index1");
		
		return (index1+index2);
	}
	
	private static void print(String x) {
		System.out.println(x);
	}
	
	public static void AddRecipeToList(int recipeIds, lists listName) throws Exception{
		/*
		 if the selected ids in the database is -1, then update all of indices to match the current
		 what if the -1 -1 -1 -1 -1 1 -1
		 */
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			int index = GetInsertionIndex(conn, listName);
			
			print(Integer.toString(index)); 			 
		    
		} catch(SQLException se){
		      se.printStackTrace();
		   } catch(Exception e){
		      e.printStackTrace();
		   } finally{
		      try{
		            ps.close();
		      } catch(SQLException se2){
		    	// nothing we can do
		    	  se2.printStackTrace();
		      }
		      try {
		            conn.close();
		      } catch(SQLException se){
		         se.printStackTrace();
		      }
		   }
		
		
	}
	
	public static void updateRestaurantIndices(ArrayList<Integer> restaurantIds) throws Exception{
		
	}

}
