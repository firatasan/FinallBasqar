Feature: Create and Delete Functionality for Cost Centers

  Background:
    Given Navigate to basqar

    When User sending the keys in the dialog content class
      | username | daulet2030@gmail.com |
      | password | TechnoStudy123@      |

    And User click on the element in the dialog content class
      | loginButton |
      | gotItButton |

    Then User should login successfully

  Scenario:  Create, Edit and Delete Cost Centers

    When User click on the element in the leftNav class
      | budget      |
      | setupBudget |
      | costCenters |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Grup3CostCenters |
      | code | 123              |

    And User click on the element in the dialog content class
      | type         |
      | randomSelect |

    And User sending the keys in the dialog content class
      | orderNo | 333 |

    And User click on the element in the dialog content class
      | expenseAccPrefixes |
      | randomSelect       |

    And User sending the keys in the dialog content class
      | key           | 333   |
      | valueConstans | Grup3 |

    And User click on the element in the dialog content class
      | addButtonCost |
      | saveButton |

    Then User should see success/error message
      | successfully |

    Then User edit the element with value
      | Grup3CostCenters | edit3NewCostCenters |

    Then User should see success/error message
      | successfully |

    When User delete value
      | edit3NewCostCenters |

    Then User should see success/error message
      | successfully |