Lifecycle:
Examples:
/data/data.table


Scenario: Sign In
Meta:
@ dodo
Given I am on a page with the URL 'https://dodopizza.by/'
When I click on element located `elementName(Гродно)`
When I click on element located `elementName(Войти)`
When I enter `#{trim(<phone>)}` in field located `elementName(checkout-form__phone-input)`
When I click on element located `elementName(Выслать код)`

Scenario: Baselines
Meta:
@ dodo
Given I am on a page with the URL 'https://dodopizza.by/grodno/profile/'
When I click on element located `elementName(Гродно)`
When I click on element located `elementName(Додокоины)`
When I CHECK_INEQUALITY_AGAINST baseline with name `prim`
When I click on element located `elementName(Гродно)`
When I COMPARE_AGAINST baseline with name `city`
When I click on element located `elementName(Минск)`
When I click on element located `elementName(camera-link)`
When I COMPARE_AGAINST baseline with name `prim`
When I click on element located `elementName(camera-close)`

Examples:
{transformer=FROM_LANDSCAPE}
|phone      |29 869 36 91                    |
|User2      |dwttest@o2.pl                   |
|Password   |Testowe1290                     |
