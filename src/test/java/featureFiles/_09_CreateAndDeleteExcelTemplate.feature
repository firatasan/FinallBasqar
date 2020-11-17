Feature: Create and Delete Functionality for SubjectCategories

  Background:
    Given Navigate to basqar

    When User sending the keys in the dialog content class
      | username | daulet2030@gmail.com |
      | password | TechnoStudy123@      |

    And User click on the element in the dialog content class
      | loginButton |
      | gotItButton |

    Then User should login successfully

  Scenario:  Create, Edit and Delete Excel Templete

    When User click on the element in the leftNav class
      | reports       |
      | setupReports  |
      | excelTemplate |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Group3NewExcelTemplete |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    Then User edit "Group3NewExcelTemplete"

    Then User should see "successfully" message

    When User delete "Group3EditedExcelTemplete"

    Then User should see "successfully" message
