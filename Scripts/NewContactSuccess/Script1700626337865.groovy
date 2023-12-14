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

WebUI.navigateToUrl('https://code-git-develop-grupoz.vercel.app?_vercel_share=9lbtB3fPg6iBJ5XWbJohjvrTjzOna9WD')

WebUI.click(findTestObject('Buttons/button_Create new account'))

WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '915 777 323')

WebUI.setEncryptedText(findTestObject('Inputs/input_Password_password_Register'), 'X3EvDjZn2gNXW1wo+iuPRA==')

WebUI.click(findTestObject('Buttons/button_Create V-Card'))

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code1_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code2_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code3_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code4_ConfirmationModal'), '9')

WebUI.click(findTestObject('Buttons/button_Confirm'))

WebUI.click(findTestObject('Buttons/button_OK'))

WebUI.click(findTestObject('Buttons/button_Contacts'))

WebUI.click(findTestObject('Buttons/button_Plus'))

WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '911 111 111')

WebUI.click(findTestObject('Buttons/button_Add contact'))

WebUI.click(findTestObject('Buttons/button_OK'))

WebUI.closeBrowser()

