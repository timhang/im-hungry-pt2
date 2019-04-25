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
	static final String PASS = "password";
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	public static void insertRecipe(int sessionID, Recipe recipe) {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("INSERT INTO Recipe (recipeID, sessionID, recipeName, favoriteListOrder, exploreListOrder, doNotShowListOrder, prepTime, cookTime, imageURL, stars, ingredients, instructions, tableType) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
	        ps.setString(13,"recipe");
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

			ps = conn.prepareStatement("INSERT INTO Restaurant (restaurantID, sessionID, restaurantName, favoriteListOrder, exploreListOrder, doNotShowListOrder, address, driveTime, phoneNumber, webURL, stars, price, tableType) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
	        ps.setString(13,"restaurant");
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
			//First remove Duplicates
			ps = conn.prepareStatement("DELETE FROM Sessions WHERE searchQuery = (?) AND numberResults = (?)");
			ps.setString(1, searchTerm);
			ps.setInt(2, numResults);
			ps.execute();
			
			//Then insert at the end the current session
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
			ps = conn.prepareStatement("SELECT * FROM Sessions ORDER BY sessionID DESC");
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
				//Removing the latest session from display
				newArray.remove(0);
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

	public static int GetInsertionIndex(Connection connection, String arg) throws SQLException {

		ps = connection.prepareStatement("SELECT COUNT(" + arg + ") as index1 FROM Recipe WHERE "+arg+"!=-1");
		rs = ps.executeQuery();
		rs.first();
		int index1 = rs.getInt("index1");

		ps = connection.prepareStatement("SELECT COUNT(" + arg + ") as index2 FROM Restaurant WHERE "+arg+"!=-1");
		rs = ps.executeQuery();
		rs.first();
		int index2 = rs.getInt("index2");

		return (index1+index2);
	}

	private static void print(String x) {
		System.out.println(x);
	}

	public static void AddRecipeToList(int recipeId, lists listName) throws Exception{
		/*
		 if the selected ids in the database is -1, then update all of indices to match the current
		 what if the -1 -1 -1 -1 -1 1 -1
		 */
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			String arg = "";
			if(listName == lists.favorites) {
				arg = "favoriteListOrder";
			} else if (listName == lists.toExplore) {
				arg = "exploreListOrder";
			} else if (listName == lists.doNotShow) {
				arg = "doNotShowListOrder";
			} else {
				return;
			}
			ps = conn.prepareStatement("SELECT "+arg+" AS listName FROM Recipe WHERE recipeID = "+recipeId);
			rs = ps.executeQuery();
			rs.first();
			int newInt = rs.getInt("listName");
			print("listOrder: "+ newInt);
			if(newInt == -1) {
				//only when the item had not been previously inserted
				int index = GetInsertionIndex(conn, arg);



				ps = conn.prepareStatement("UPDATE Recipe SET " + arg +" = (?) WHERE recipeID = (?)");
				print(Integer.toString(index));
				ps.setInt(1, index);
				ps.setInt(2, recipeId);
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

	public static void AddRestaurantToList(int restId, lists listName) throws Exception{
		/*
		 if the selected ids in the database is -1, then update all of indices to match the current
		 what if the -1 -1 -1 -1 -1 1 -1
		 */
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			String arg = "";
			if (listName == lists.favorites) {
				arg = "favoriteListOrder";
			} else if (listName == lists.toExplore) {
				arg = "exploreListOrder";
			} else if (listName == lists.doNotShow) {
				arg = "doNotShowListOrder";
			} else {
				return;
			}
			ps = conn.prepareStatement("SELECT " + arg + " AS listName FROM Restaurant WHERE restaurantID = " + restId);
			rs = ps.executeQuery();
			rs.first();
			int newInt = rs.getInt("listName");
			print("listOrder: " + newInt);
			if (newInt == -1) {
				// only when the item had not been previously inserted
				int index = GetInsertionIndex(conn, arg);

				ps = conn.prepareStatement("UPDATE Restaurant SET " + arg + " = (?) WHERE restaurantID = (?)");
				print(Integer.toString(index));
				ps.setInt(1, index);
				ps.setInt(2, restId);
				ps.execute();
			}

		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException se2) {
				// nothing we can do
				se2.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}


	}


	public static JSONArray GetList(lists listName) throws Exception{
		Connection conn = null;
		try {
			String arg = "";
			if(listName == lists.favorites) {
				arg = "favoriteListOrder";
			} else if (listName == lists.toExplore) {
				arg = "exploreListOrder";
			} else if (listName == lists.doNotShow) {
				arg = "doNotShowListOrder";
			} else {
				return null;
			}
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			ps = conn.prepareStatement("SELECT * FROM Recipe WHERE "+arg+"!=-1 "
					+ "UNION"
					+ " SELECT * FROM Restaurant WHERE "+arg+"!=-1 ORDER BY "+arg);
	        rs = ps.executeQuery();
	        JSONArray newArray = new JSONArray();
	        if(rs.next()==false) {

				return null;
				//System.out.println("login state: "+ state);
			} else {
				do {
					//JSONObject;
					//int count = rs.getInt("count");
					JSONObject jsonObj = new JSONObject();
					String type = rs.getString("tableType");
					if(type.equals("recipe")) {
						int id = rs.getInt(1);
						String name = rs.getString(3);
						String starRating = rs.getString(10);
						String prepTime = rs.getString(7);
						String cookTime = rs.getString(8);
						String link = rs.getString(9);
						jsonObj.put("id", Integer.toString(id));
						jsonObj.put("type", type);
						jsonObj.put("name", name);
						jsonObj.put("starRating", starRating);
						jsonObj.put("prepTime", prepTime);
						jsonObj.put("cookTime", cookTime);
						jsonObj.put("link", link);
					} else if (type.equals("restaurant")) {
						int id = rs.getInt(1);
						String name = rs.getString(3);
						String address = rs.getString(7);
						String rating = rs.getString(11);
						String link = rs.getString(10);
						String travelTime = rs.getString(8);
						String priceRange = rs.getString(12);
						jsonObj.put("id", Integer.toString(id));
						jsonObj.put("type", type);
						jsonObj.put("name", name);
						jsonObj.put("priceRange", address);
						jsonObj.put("rating", rating);
						jsonObj.put("link", link);
						jsonObj.put("travelTime", travelTime);
						jsonObj.put("priceRange", priceRange);

					}




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

	public static void updateListIndices(lists listName, int uniqueId, int newIndex, String type) throws Exception{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			String arg = "";
			if (listName == lists.favorites) {
				arg = "favoriteListOrder";
			} else if (listName == lists.toExplore) {
				arg = "exploreListOrder";
			} else if (listName == lists.doNotShow) {
				arg = "doNotShowListOrder";
			} else {
				return;
			}

			// only when the item had not been previously inserted
			if (type == null) {
				return;
			} else if (type.equals("recipe")) {
				ps = conn.prepareStatement("UPDATE Recipe SET " + arg + " = (?) WHERE recipeID = (?)");
			} else if (type.equals("restaurant")) {
				ps = conn.prepareStatement("UPDATE Restaurant SET " + arg + " = (?) WHERE restaurantID = (?)");
			} else {
				return;
			}

			print(Integer.toString(newIndex));
			ps.setInt(1, newIndex);
			ps.setInt(2, uniqueId);
			ps.execute();


		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException se2) {
				// nothing we can do
				se2.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}
	public static void insertGroceryItem(String itemName) {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("INSERT INTO GroceryList (groceryItem) VALUES (?)");
	        ps.setString(1, itemName);
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
	
	public static void removeGroceryItem(String itemName) {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("DELETE FROM GroceryList WHERE groceryItem='"+ itemName+ "'");
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
	public static ArrayList<String> GetGroceryList() throws Exception{
		Connection conn = null;
		ArrayList<String> newArray = new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);
			ps = conn.prepareStatement("SELECT * FROM GroceryList");
	        rs = ps.executeQuery();
	        
	        if(rs.next()==false) {

				return newArray;
				//System.out.println("login state: "+ state);
			} else {
				do {
					//JSONObject;
					//int count = rs.getInt("count");
					String itemName;
					itemName = rs.getString("groceryItem");
					newArray.add(itemName);


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
		return newArray;
	}

}
