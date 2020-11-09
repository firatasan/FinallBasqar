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

  Scenario:  Create, Edit and Delete Position Salary

    When User click on the element in the leftNav class
      | humanResources |
      | setupHR        |
      | salaryTypes    |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Group3NewSalaryType |

    And User click on the element in the dialog content class
      | userType       |
      | userTypeRandom |
      | saveButton     |

    Then User should see success/error message
      | successfully |

    Then User edit the element with value
      | Group3NewSalaryType | editedNewSalaryType |

    Then User should see success/error message
      | successfully |

    When User delete value
      | editedNewSalaryType |

    Then User should see success/error message
      | successfully |


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

    Then User should see success/error message
      | successfully |

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryModifiers |

    Then User edit the element with value
      | cocukYardimi | editedcocukYardimi |

    Then User should see success/error message
      | successfully |

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryModifiers |

    When User delete value
      | editedcocukYardimi |

    Then User should see success/error message
      | successfully |


  Scenario:  Create, Edit and Delete Salary Constants

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryConstants |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | nameConstans  | isim       |
#      TODO Alttaki tarihe çift tıklamak gerekiyor.
      | validform     | 11/10/2011 |
      | key           | a12        |
      | valueConstans | 100        |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see success/error message
      | successfully |

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryConstants |

    Then User edit the element with value
      | isim | editedisim |

    Then User should see success/error message
      | successfully |

    When User click on the element in the leftNav class
      | humanResources  |
      | setupHR         |
      | salaryConstants |

    When User delete value
      | editedisim |

    Then User should see success/error message
      | successfully |