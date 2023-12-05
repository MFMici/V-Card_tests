import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import cucumber.api.java.en.Given
import internal.GlobalVariable

public class Login {

	@Given("I sucessfully login into V-Card")
	public void i_sucessfully_login_into_V_Card() {
		WebUI.openBrowser('')
		WebUI.navigateToUrl('https://code-git-feature-gz-49-grupoz.vercel.app/?_vercel_share=gALFEcY2Ne3gvkI91G8z2DSGXul113c8')
		WebUI.click(findTestObject('Buttons/button_Already have an account'))
		WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '910000091')
		WebUI.setText(findTestObject('Inputs/input_Password_password_Register'), 'Abc123..')
		WebUI.click(findTestObject('Buttons/button_Login'))
	}
	
	@Given("I sucessfully login into V-Card as 911 222 333")
	public void i_sucessfully_login_into_V_Card_as_911_222_333() {
		WebUI.openBrowser('')
		WebUI.navigateToUrl('https://code-git-feature-gz-49-grupoz.vercel.app/?_vercel_share=gALFEcY2Ne3gvkI91G8z2DSGXul113c8')
		WebUI.click(findTestObject('Buttons/button_Already have an account'))
		WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '911 222 333')
		WebUI.setText(findTestObject('Inputs/input_Password_password_Register'), 'micael1!A')
		WebUI.click(findTestObject('Buttons/button_Login'))
	}
}
