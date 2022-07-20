Lifecycle:
Examples:
/data/data.table

Scenario: Sign Up1
Meta:
@ Sign Up1
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `elementName(Start doing)`
When I enter `#{toUpperCase(<User1>)}` in field located `elementName(email)`
When I click on element located `elementName(signup-submit)`
When I click on element located `elementName(signup-submit)`

Scenario: Sign In
Meta:
@ Sign Up2
Given I am on a page with the URL 'https://trello.com/'
When I enter `#{toLowerCase(<User2>)}` in field located `elementName(email)`
When I click on element located `elementName(signup-submit)`
When I click on element located `elementName(signup-submit)`


Examples:
{transformer=FROM_LANDSCAPE}
|User1      |IhorTabachenko@gmail.com        |
|User2      |IhorTabachenko@gmail.com        |
