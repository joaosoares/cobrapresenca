Feature: Main page
  In order to see if professors require class attendance
  As a student
  I want to be able to search his name or the subject name/code

  Scenario: Check if Ricardo Freire requires attendance by his name
    Given I am in the CobraPresenca home page
    And I have entered "Ricardo Freire" into the search box
    When I press enter
    Then it should say he DOES NOT require for CALCULO VI
