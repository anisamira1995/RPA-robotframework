*** Setting ***
Library     RPA.Browser.Selenium

# https://robocorp.com/docs/libraries/rpa-framework/rpa-browser-selenium/keywords


*** Test Cases ***

Simple
    open browser                    https://katalon-demo-cura.herokuapp.com/     chrome
    click element                   //*[@id="btn-make-appointment"]
    input text                      //*[@id="txt-username"]       John Doe
    input text                      //*[@id="txt-password"]       ThisIsNotAPassword
    click element                   //*[@id="btn-login"]
    select from list by label       //*[@id="combo_facility"]    Hongkong CURA Healthcare Center
    click element                   //*[@id="chk_hospotal_readmission"]
    click element                   //*[@id="radio_program_medicaid"]
    click element                   //section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    click element                   xpath=(.//*[normalize-space(text()) and normalize-space(.)="Sa"])[1]/following::td[25]
    click element                   //section[@id="appointment"]/div/div/form/div[4]/div/div/div/span
    input text                      //*[@id="txt_comment"]               testing2
    click element                   //*[@id="btn-book-appointment"]
    wait until keyword succeeds     3x      0.5sec      Check_element


*** Keywords ***

Check_element
    element text should be          //*[@id="summary"]/div/div/div[1]/h2      Appointment Confirmation
