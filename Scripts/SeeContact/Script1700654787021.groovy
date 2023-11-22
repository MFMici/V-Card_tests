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

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/a_Create new account'))

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Phone_phone'), 
    '917 583 255')

WebUI.setEncryptedText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Password_password'), 
    'ejB8pJq6u/xGVNl7VSHZYA==')

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/button_Create V-Card'))

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Confirm your code and conclude the tr_7973d8'), 
    '4')

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Confirm your code and conclude the tr_440cde'), 
    '4')

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Confirm your code and conclude the tr_006784'), 
    '4')

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Confirm your code and conclude the tr_1abd07'), 
    '4')

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/button_Confirm'))

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/button_OK'))

WebUI.navigateToUrl('http://localhost:8080/contacts')

WebUI.click(findTestObject('Page_Vite  Vue/svg_Contacts_add-icon__position'))

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Name_name'), 
    'Micael')

WebUI.setText(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/input_Phone_phone_1'), 
    '917 581 346')

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/button_Add contact'))

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/button_OK'))

WebUI.click(findTestObject('Object Repository/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/Page_Vite  Vue/h3_Micael'))

WebUI.closeBrowser()

