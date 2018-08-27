@ems
  Feature: Login to EMS page

    Scenario: Login to EMS page
      Given I launch the ems page
      When I enter the username and password
      And click on the singtel rewards link
      Then validate singtel rewards url
      And click on the viewAll rewards link
#      Then validate the dropdown list against LMS
      And click on "Birthday Treats" from category dropdown
#      And click on "Find Out More" button
#      And click on "Redeem" button
#      And I click on login button
#      Then I should see login page