package com.zensar.stepDefinations;

import com.zensar.scriptutils.ScenarioState;
import com.zensar.scriptutils.StepBase;

import cucumber.api.java.en.Then;

public class MobileStepDefinition extends StepBase {


	public MobileStepDefinition(ScenarioState scenarioState) {
		super(scenarioState);
	}

	@Then("perform addition for numbers and verify the result")
	public void mobile_test() throws Exception {

	}

//	@And("accept cookies and skip login")
//	public void acceptCookies() {
//		mobilePrototype.acceptCookiesAndSkip();
//	}
//
//	@And("click on help")
//	public void click_on_help() {
//		mobilePrototype.clickOnHelp();
//	}
//
//	@And("click on contact specialist and select department")
//	public void click_on_contact_specialist_and_select_department() {
//		mobilePrototype.clickOnContactSpecialistAndSelectDepartment();
//	}
//
//	@And("click on filter and select {string} location")
//	public void click_on_filter_and_select_location(String location) {
//		mobilePrototype.clickOnFilterAndSelectLocation(location);
//	}
//
//	@And("verify applied filter")
//	public void verify_applied_filter() {
//		mobilePrototype.verifyAppliedFilter();
//	}
//
//	@And("click on search")
//	public void click_on_search() {
//		mobilePrototype.clickOnSearch();
//	}
//
//	@And("enter and search {string} text")
//	public void search_text(String text) {
//		mobilePrototype.enterAndSearch(text);
//	}
//
//	@And("verify results contains searched text")
//	public void verify_search() {
//		mobilePrototype.verifySearch();
//	}
//
//	@And("accept cookies")
//	public void fs() {
//		mobilePrototype.acceptCookies();
//	}
//
//	@And("login and accept popups")
//	public void loginAndAcceptPopUps() {
//		mobilePrototype.loginAndAcceptPopUps();
//	}
//
//	@And("select {string} sale")
//	public void selectSale(String sale) {
//		// String sale="Test Live Sale 1 - 1767";
//		// String sale = "Geneva Magnificent Jewels";
//		mobilePrototype.selectSale(sale);
//	}
//
//	@And("click on follow auction")
//	public void clickOnFollowAuctionBtn() {
//		mobilePrototype.clickOnFollowAuctionBtn();
//	}
//
//	@And("click on my christies")
//	public void clickOnMyChristies() {
//		mobilePrototype.clickOnMyChristies();
//	}
//
//	@And("click on my auctions")
//	public void clickOnMyAuctions() {
//		mobilePrototype.clickOnMyAuctions();
//	}
//
//	@And("click on followed auctions")
//	public void clickOnFollowedAuctions() {
//		mobilePrototype.clickOnFollowedAuctions();
//	}
//
//	@And("click on followed sale")
//	public void clickOnFollowedSale() {
//		mobilePrototype.clickOnFollowedSale();
//	}
//
//	@And("click on unfollow auction")
//	public void clickOnUnfollowBtn() {
//		mobilePrototype.clickOnUnfollowBtn();
//	}

}
