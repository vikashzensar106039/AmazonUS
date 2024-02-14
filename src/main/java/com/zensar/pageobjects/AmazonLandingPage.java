package com.zensar.pageobjects;

import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import com.zensar.scriptutils.PageBase;
import com.zensar.scriptutils.ScenarioState;

public class AmazonLandingPage extends PageBase {


	@FindBy(xpath = "//input[@id='ap_email']")
	WebElement textEmail;

	@FindBy(xpath = "//input[@id='continue']")
	WebElement buttonContinue;
		
	@FindBy(xpath = "//input[@id='ap_password']")
	WebElement textPassword;

	@FindBy(xpath = "//input[@id='signInSubmit']")
	WebElement buttonSignIn;
	
	@FindBy(xpath = "//input[@id='twotabsearchtextbox']")
	WebElement SearchProduct;
	
	//@FindBy(xpath = "//input[@id='signInSubmit']")
	//WebElement clickcheckbox;
	
	@FindBy(xpath = "//input[@id='nav-search-submit-button']")
	WebElement clickSearch;
	
	@FindBy(xpath = "//button[@class='a-button-text']")
	WebElement SelectMobile;
	
	@FindBy(xpath = "//*[@class='a-button-text']")
	WebElement GoToCart;
	
	@FindBy(xpath = "//input[@name='proceedToRetailCheckout']")
	WebElement Checkout;

	public AmazonLandingPage(ScenarioState state) {
		super(state);
	}

	public void openAmazon() {
		try {
			System.out.println("Entered try in open");
			String enviroment = getEnvironment();
			String url ;
			switch(enviroment){
			case "Staging":
				url= getEnvProperty("url_staging");
				break;
			case "Integration":
				url= getEnvProperty("url_integration");
				break;
			case "Production":
				url= getEnvProperty("url");
				break;
			default:
				url= getEnvProperty("url_integration");
				break;
			}
			getDriver().get(url);

		} catch (Exception e) {
			System.out.println("Entered Catch due to time out");
		}

	}
	
	public void loginToAmazon() {
		pause(1000);
		AmazonLandingPage(getEnvProperty("username"), getEnvProperty("password"));
	}
	
	public void AmazonLandingPage (String username,String password) {
		pause(500);
		System.out.println("Clicked Login");
		enterText(textEmail,username);
		System.out.println("username : " + username);
		embedScreenshot(textEmail);
		click(buttonContinue);
		enterText(textPassword, password);
		System.out.println("password : " + password);
		embedScreenshot(textPassword);
		click(buttonSignIn);
		  long startTime=System.currentTimeMillis();
	        while(isPresent("//chr-modal-login")){    //Wait until login pop-up is disappeared
	            System.out.println("waiting for login popup to disapear...");
	            pause(500);
	            if((System.currentTimeMillis()-startTime) > 30000)    //break if taking too much time
	                break;

	        }
	
	}
	
	public void SearchProduct() 
	{
		clearAndEnterText(SearchProduct, getTestDataValue("Search"));
		pause(500);
		click(SearchProduct);		
		embedScreenshot(SearchProduct);
		pause(500);
		click(clickSearch);
		pause(500);
	}
		
	
	public void SelectMobile() 
	{
		click(SelectMobile);
		embedScreenshot(SelectMobile);
		pause(2000);
		click (GoToCart);
		embedScreenshot(GoToCart);
	}
	
	public void Checkout() 
	{
		pause(2000);
		click(Checkout);
		embedScreenshot(Checkout);
			
	}
}