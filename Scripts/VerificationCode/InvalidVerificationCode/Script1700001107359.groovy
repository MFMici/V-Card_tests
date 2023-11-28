import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser('')

WebUI.navigateToUrl('http://localhost:8080/')

WebUI.click(findTestObject('Buttons/button_Create new account'))

WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '913 245 123')

WebUI.setEncryptedText(findTestObject('Inputs/input_Password_password_Register'), 'PEFQY2aWHogqppfEVi3FQw==')

WebUI.click(findTestObject('Buttons/button_Create V-Card'))

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code1_ConfirmationModal'), 'a')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code2_ConfirmationModal'), 'd')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code3_ConfirmationModal'), '3')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code4_ConfirmationModal'), '2')

WebUI.click(findTestObject('elem_This field must be a number'))

WebUI.verifyElementText(findTestObject('elem_This field must be a number'), 'This field must be a number')

WebUI.closeBrowser()


