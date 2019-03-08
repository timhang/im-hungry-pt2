package API;

import java.util.ArrayList;

public class Recipe {
	public Recipe(int id) {// Constructor for Recipe data object
		this.id = id;
	}

	public void setName(String name) {	//Name of recipe
		this.name = name;
	}

	public void setImage(String img) { 	//Image of recipe
		this.imageSrc = img;
	}

	public void setPrepTime(int time) { //preparation time of recipe
		this.prepTime = time;
	}

	public void setCookTime(int time) { //cook time of recipe
		this.cookTime = time;
	}

	public void setStarRating(float starRating) {// star rating of recipe
		this.starRating = starRating;
	}

	public void setIngredients(ArrayList<String> ingredients) { // list of ingredients
		this.ingredients = ingredients;
	}

	public void setInstructions(ArrayList<String> instructions) { // list of instructions
		this.instructions = instructions;
	}

	public void setDoNotShow(Boolean state) { // if it is in do not show list 
		this.doNotShow = state;
	}

	public void setFavorite(Boolean state) { // if it is in favorite list
		this.favorite = state;
	}

	public void setToExplore(Boolean state) { // if it is in to explore list
		this.toExplore = state;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getImage() {
		return imageSrc;
	}

	public int getPrepTime() {
		return prepTime;
	}

	public int getCookTime() {
		return cookTime;
	}

	public float getStarRating() {
		return starRating;
	}

	public ArrayList<String> getIngredients() {
		return ingredients;
	}

	public ArrayList<String> getInstructions() {
		return instructions;
	}

	public Boolean getDoNotShow() {
		return doNotShow;
	}

	public Boolean getFavorite() {
		return favorite;
	}

	public Boolean getToExplore() {
		return toExplore;
	}

	private int id;
	private String name;
	private String imageSrc;
	private int prepTime = 50; // in minutes
	private int cookTime = 40; // in minutes

	private float starRating; // rounded to increments of 0.5
	private ArrayList<String> ingredients; // contains all ingredients
	private ArrayList<String> instructions; // contains instructions arranged by index
	private Boolean doNotShow = false; // false is show, true is do not show
	private Boolean favorite = false; // false is not in favorite, true is in favorite
	private Boolean toExplore = false;
	// probably a Integer indicating the rank of the recipe by amount of prep time
	// a bunch of getters and setters
}