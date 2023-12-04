import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When

import java.util.Random

class Register {
	// Generate a random 7-digit number
	Random rand = new Random();
	int randomNumber = rand.nextInt(10000000); // 7 digits (0 to 9999999)
	String formattedRandomNumber = String.format("%07d", randomNumber);

	// Replace the last 7 digits with the random number
	String phoneNumber = "91" + formattedRandomNumber;


	@When("I insert {string} in the phone field")
	public void i_insert_in_the_phone_field(String string) {
		WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), string)
	}

	@When("I insert {string} in the password field")
	public void i_insert_in_the_password_field(String string) {
		WebUI.setText(findTestObject('Inputs/input_Password_password_Register'), string )
	}

	// Not using this one, delete later
	@Then("I insert {string} in the name field")
	public void i_insert_in_the_name_field(String string) {
		WebUI.setText(findTestObject('Page_Vite  Vue/Page_Vite  Vue/input_Name_name'), string)
	}

	@When("I insert {string} in the payment field")
	public void i_insert_in_the_payment_field(String string) {
		WebUI.setText(findTestObject('Inputs/input_Payment'), string)
	}

	@When("I insert {string} in the message field")
	public void i_insert_in_the_message_field(String string) {
		WebUI.setText(findTestObject('Inputs/input_Message'), string)
	}

	@Given("I sucessfully register a V-Card")
	public void i_sucessfully_register_a_V_Card() {
		WebUI.openBrowser('')
		WebUI.navigateToUrl('https://code-git-feature-gz-51-grupoz.vercel.app/?_vercel_share=W1IqsjFf8pQbBl8pguNR4hh3ahtKAHAs')
		WebUI.click(findTestObject('Buttons/button_Create new account'))
		WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), phoneNumber)
		WebUI.setText(findTestObject('Inputs/input_Password_password_Register'), 'micael1!A')
		WebUI.click(findTestObject('Buttons/button_Create V-Card'))
		WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code1_ConfirmationModal'), '9')
		WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code2_ConfirmationModal'), '9')
		WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code3_ConfirmationModal'), '9')
		WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code4_ConfirmationModal'), '9')
		WebUI.click(findTestObject('Buttons/button_Confirm'))
		WebUI.click(findTestObject('Buttons/button_OK'))
	}

	@When("I insert my {string} in the phone field")
	public void i_insert_my_phone_field(String string) {
		WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), phoneNumber)
	}
	
	@And("I insert {string} in the deposit quantity")
	public void i_insert_in_deposit_quantity(String string) {
		WebUI.setText(findTestObject('Inputs/input_Deposit Quantity'), string)
	}
}

