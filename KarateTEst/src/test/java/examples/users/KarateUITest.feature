Feature: Karate browser automation
  Background:
* configure driver = { type: 'chrome' }

Scenario: Make appointment

  Given driver 'https://katalon-demo-cura.herokuapp.com/'
  * fullscreen()
  And click('#btn-make-appointment')
  * delay(4000)
  And input('#txt-username','John Doe')
  And input('#txt-password','ThisIsNotAPassword')
  And click('#btn-login')
#  Then match driver.url == 'https://katalon-demo-cura.herokuapp.com/#appointment'
  * delay(4000)
   And waitForEnabled("//div/span[@class='glyphicon glyphicon-calendar']").click()
#  And click("//div/span[@class='glyphicon glyphicon-calendar']")
  * delay(4000)
  * def actMonth = text("//thead/tr/th[@class='datepicker-switch']")
  * print actMonth

  And eval if(actMonth != "December 2022") (karate.call('clickArrow.feature'));

#  And eval (while(month != "December 2022") (click("//thead/tr/th[@class='next' and @style='visibility: visible;']") month=text("//thead/tr/th[@class='datepicker-switch']")))
  * def selectMonth =
  """
  function(){
  var fun = "//thead/tr/th[@class='next' and @style='visibility: visible;']";
  var e = document.querySelector("arguments[0].click()");
  return fun(e)
  }
  """
#  """
#  funtion(){
#  JavascriptExecutor js = (JavascriptExecutor) driver;
#  js.executeScript("arguments[0].click()", "//thead/tr/th[@class='next' and @style='visibility: visible;']");
#   var month = document.getElementById('//thead/tr/th[@class='datepicker-switch']');
#   return month;
#  """
#  And eval (while(actMonth != "December 2022") actMonth=selectMonth()
#  * def month1 = selectMonth()
#
#  * print month1
  * delay(1000)

#
#Given driver 'https://www.redbus.in/'
##And input('input[name=q]', 'Youtube')
##  And click('//*[@id="src"]')
##  And input('//*[@id="src"]', 'Chennai')
#
#  And waitForEnabled("//input[@id='onward_cal']").click()
##  And click('//*[@id="welcome_image_div"]')
#  And click("//div[@class='fl search-box date-box gtm-onwardCalendar']/div")
#  * delay(4000)
#When click("//*[@class='fl search-box date-box gtm-onwardCalendar']")
#  * delay(2000)
##When click("//h3[class='LC20lb DKV0Md']")
#Then waitFor("//*[@id='rb-calendar_onward_cal']/table/tbody/tr[1]/td[2]")
#* def  month = text("//*[@id='rb-calendar_onward_cal']/table/tbody/tr[1]/td[2]")
#  * print month
#  * delay(4000)
#  * print 'completed 1 flow and checking month'
##  And eval if(month != "Nov 2022") karate.call('clickArrow.feature')
#  And eval while(month != "Nov 2022") karate.call('clickArrow.feature')
#
#
#
##And click('input[id=search]')
##And input('input[id=search]', 'knoldus')
##And click('button[id=search-icon-legacy]')
##And match driver.url == 'https://www.youtube.com/results?search_query=knoldus'