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
      | humanResources      |
      | setupHR |
      | positionSalary |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Group3NewPositionSalary |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see success/error message
      | successfully |

    Then User edit the element with value
    | Group3NewPositionSalary | editedPositionSalary |

    When User delete value
      | editedPositionSalary |

    Then User should see success/error message
      | successfully |


  Scenario:  Create and Delete Positions

    When User click on the element in the leftNav class
      | positions      |

    And User click on the element in the dialog content class
      | addButton |


    And User sending the keys in the dialog content class
      | name | Group3NewPosition |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see success/error message
      | successfully |

    Then User edit the element with value
      | Group3NewPosition | editedPosition |

    Then User should see success/error message
      | successfully |

    When User delete value
      | editedPosition |

    Then User should see success/error message
      | successfully |
