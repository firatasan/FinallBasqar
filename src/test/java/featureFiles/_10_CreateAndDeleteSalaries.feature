Feature: Create and Delete Functionality for Human Resources

  Background:
    Given Navigate to basqar

    When User sending the keys in the dialog content class
      | username | daulet2030@gmail.com |
      | password | TechnoStudy123@      |

    And User click on the element in the dialog content class
      | loginButton |
      | gotItButton |

    Then User should login successfully

  Scenario:  Create, Edit and Delete Salary Types

    When User click on the element in the leftNav class
      | humanResources |
      | setupHR        |
      | salaryTypes    |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Group3NewSalaryType |

    And User click on the element in the dialog content class
      | userType     |
      | randomSelect |
      | saveButton   |

    Then User should see "successfully" message

    And User sending the keys in the dialog content class
      | searchName | Group3NewSalaryType |

    And User click on the element in the dialog content class
      | search |

    Then User edit "Group3NewSalaryType"

    And User sending the keys in the dialog content class
      | name | editedNewSalaryType |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    And User sending the keys in the dialog content class
      | searchName | editedNewSalaryType |

    And User click on the element in the dialog content class
      | search |

    When User delete "editedNewSalaryType"

    Then User should see "successfully" message


  Scenario:  Create, Edit and Delete Salary Modifiers

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryModifiers |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | description | cocukYardimi |
      | variable    | cck          |
      | priority    | 12           |
      | amount      | 100          |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryModifiers |

    And User sending the keys in the dialog content class
      | description | cocukYardimi |

    And User click on the element in the dialog content class
      | search |

    Then User edit "cocukYardimi"

    And User sending the keys in the dialog content class
      | description | editedcocukYardimi |
      | variable    | ecck               |
      | priority    | 13                 |
      | amount      | 300                |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryModifiers |

    And User sending the keys in the dialog content class
      | description | editedcocukYardimi |

    And User click on the element in the dialog content class
      | search |

    When User delete "editedcocukYardimi"

    Then User should see "successfully" message


  Scenario:  Create, Edit and Delete Salary Constants

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryConstants |

    And User click on the element in the dialog content class
      | addButton |
      | validFrom |

    And User sending the keys in the dialog content class
      | validFrom | 12/11/2018 |

    And User click on the element in the dialog content class
      | closeDate |

    And User sending the keys in the dialog content class
      | nameConstans  | isim |
      | key           | a12  |
      | valueConstans | 100  |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    And User sending the keys in the dialog content class
      | searchName | isim |

    And User click on the element in the dialog content class
      | search |

    Then User edit "isim"

    And User click on the element in the dialog content class
      | validFrom |

    And User sending the keys in the dialog content class
      | validFrom | 11/02/2020 |

    And User click on the element in the dialog content class
      | closeDate |

    And User sending the keys in the dialog content class
      | nameConstans  | editedisim |
      | key           | a13        |
      | valueConstans | 200        |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    And User sending the keys in the dialog content class
      | searchName | editedisim |

    And User click on the element in the dialog content class
      | search |

    When User delete "editedisim"

    Then User should see "successfully" message