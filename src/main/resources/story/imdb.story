Scenario: create aaccount
Meta:
@ create aaccount
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on element located `elementName(Sign In)`
When I click on element located `elementName(Create a New Account)`
When I enter `Ihar Tabachenka` in field located `elementName(customerName)`
When I enter `ihortabachenko@gmail.com` in field located `elementName(email)`
When I enter `testpassword` in field located `elementName(a-input-text a-form-normal a-span12 auth-required-field auth-require-fields-match auth-require-password-validation)`
When I enter `testpassword` in field located `elementName(passwordCheck)`
When I click on element located `elementName(a-button-input)`

Scenario: search for movie by search box
Meta:
@ search for movie by search box
When I enter `Jay and Silent bob strike back` in field located `elementName(imdb-header-search__input searchTypeahead__input react-autosuggest__input react-autosuggest__input--open)`
When I click on element located `elementName(ipc-icon ipc-icon--magnify)`

Scenario: open page
Meta:
@ open page
When I click on element located `elementName(/title/tt0261392/?ref_=fn_al_tt_1)`

Scenario: add movie to Watchlist
Meta:
@ add movie to Watchlist
When I click on element located `elementName(ipc-split-button__btn)`

Scenario: Sort list from Your Watchlist and export it
Meta:
@ Sort list from Your Watchlist and export it
When I click on element located `elementName(iconContext-account-circle)`
When I click on element located `elementName(imdb-header__watchlist-button-count watchlistButtonCount)`
When I click on element located `elementName(lister-sort-by-options)`
When I click on element located `elementName(MOVIEMETER)`
When I click on element located `elementName(/list/ls567706055/export)`
