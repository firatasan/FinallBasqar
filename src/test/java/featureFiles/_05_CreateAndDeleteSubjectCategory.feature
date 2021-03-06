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

  Scenario:  Create and Delete SubjectCategories

    When User click on the element in the leftNav class
      | education      |
      | setupEducation |
      | subjectCategories |

    And User click on the element in the dialog content class
      | addButton |

    And User sending the keys in the dialog content class
      | name | Group3NewCategories |
      | code | 12332111            |

    And User click on the element in the dialog content class
      | saveButton |

    Then User should see "successfully" message

    And User sending the keys in the dialog content class
      | searchName | Group3NewCategories |

    And User click on the element in the dialog content class
      | search |

    When User delete "Group3NewCategories"

    Then User should see "successfully" message