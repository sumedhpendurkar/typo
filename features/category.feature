Feature: Test Category
  As a blog administrator
  In order to group my blogs, I need categories
  I want to be able to view, edit and create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    Given I am on the category page
    When I fill in "category_name" with "Name"
    And I fill in "category_keywords" with "Key Word"
    And I fill in "category_permalink" with "Permalink"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should see "Name"
    And I should be on the category page

  Scenario:
    Given A sample category is setup
    And I am on the category page
    When I follow "Edit"
    And I fill in "category_description" with "new desc"
    And I press "Save"
    Then I should see "new desc"
    And I should be on the category page

  Scenario:
    Given A sample category is setup
    And I am on the category edit page for "Thriller"
    When I fill in "category_description" with "new desc"
    And I press "Save"
    Then I should see "new desc"
    And I should be on the category page
