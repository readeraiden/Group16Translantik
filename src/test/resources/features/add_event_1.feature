@wip
Feature: Add Event

  @ac1
  Scenario: AC1 User can access the "General Information" page (by clicking on any vehicle/row under Fleet-Vehicle module)

    When Store manager click on any vehicle
    And Store manager will see "General Information" page

  @ac2
  Scenario: AC2 Store manager can click the "Add Event" button
    When Store manager click on any vehicle
    Then Store manager can see addEvent button
    And Store manager can click on addEvent button

  @ac3
  Scenario: AC3 Store Managers can see AddEvent page
    When Store manager click on any vehicle
    When Store manager can click on addEvent button
    Then "Add Event" Page opens

  @ac4
  Scenario: AC4 Compulsory Fields must be marked
    When Store manager click on any vehicle
    When Store manager can click on addEvent button
    Then Compulsory Fields must be shown
      | Title                  |
      | Owner                  |
      | Organizer display name |
      | Organizer email        |
      | Start                  |
      | End                    |

  @ac5
  Scenario Outline: AC5 If any compulsory field is not filled, "This value should not be blank." message should be displayed <Compulsory Field>
    When Store manager click on any vehicle
    And Store manager can click on addEvent button
    Then Store manager should not save event without filling out compulsory "<Title>" , "<Organizer display name>", "<Organizer email>"
    Then "Lütfen bu alanı doldurun." message should be displayed
    Examples:
      | Title     | Organizer display name | Organizer email  |
      |           | Ali                    | dd@mail.com      |
      | ProMain   |                        | ale1457@mail.com |
      | Maintaned | Veli                   |                  |



