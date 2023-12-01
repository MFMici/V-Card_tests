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

WebUI.navigateToUrl('https://code-git-feature-gz-51-grupoz.vercel.app/?_vercel_share=W1IqsjFf8pQbBl8pguNR4hh3ahtKAHAs')

WebUI.click(findTestObject('Buttons/button_Create new account'))

WebUI.setText(findTestObject('Inputs/input_Phone_phone_Register'), '934 212 221')

WebUI.setText(findTestObject('Inputs/input_Password_password_Register'), 'micael1!A')

WebUI.click(findTestObject('Buttons/button_Create V-Card'))

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code1_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code2_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code3_ConfirmationModal'), '9')

WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code4_ConfirmationModal'), '9')

WebUI.click(findTestObject('Buttons/button_Confirm'))

WebUI.click(findTestObject('Buttons/button_OK'))

WebUI.verifyElementVisible(findTestObject('elem_Dashboard'))

not_run: WebUI.click(findTestObject('Buttons/button_Send Money'))

not_run: WebUI.setText(findTestObject('Inputs/input_Phone'), '911111111')

not_run: WebUI.setText(findTestObject('Inputs/input_Payment'), '10')

not_run: WebUI.setText(findTestObject('Inputs/input_Message'), 'toma la 10 euros')

not_run: WebUI.click(findTestObject('Buttons/button_Send Payment'))

not_run: WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code1_ConfirmationModal'), 
    '9')

not_run: WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code2_ConfirmationModal'), 
    '9')

not_run: WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code3_ConfirmationModal'), 
    '9')

not_run: WebUI.setText(findTestObject('Inputs/input_Confirm your code and conclude the transaction_code4_ConfirmationModal'), 
    '9')

not_run: WebUI.click(findTestObject('Buttons/button_Confirm'))

not_run: WebUI.click(findTestObject('Buttons/button_OK'))

WebUI.click(findTestObject('elem_Transacations'))

WebUI.setText(findTestObject('Inputs/input_Incomes_transactions__filter'), '01012000')

