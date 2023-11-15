Feature: click arrow

  Scenario: click arrow

  * print 'call feature'
  And click("//thead/tr/th[@class='next' and @style='visibility: visible;']")
  * delay(1000)
  * def curMonth = text("//thead/tr/th[@class='datepicker-switch']")
   And eval if(curMonth != "December 2022")(karate.call('clickArrow.feature'));

#    When click('//*[@id="rb-calendar_onward_cal"]/table/tbody/tr[1]/td[3]/button')
#    * delay(4000)
#      * def  month = text("//*[@id='rb-calendar_onward_cal']/table/tbody/tr[1]/td[2]")
#    * print month