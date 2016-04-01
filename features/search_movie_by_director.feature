Feature: search for movies by director
 
  As a movie buff
  So that I can find movies with my favorite director
  I want to include and serach on director information in movies I enter
 
Background: movies in database
 
  Given the following movies exist:
  | title                                   | rating | director        | release_date |
  | Mission: Impossible III                 | PG-13  |                 |   2006-11-12 |
  | Harry Potter and the Half-Blood Prince  | PG     | David Yates     |   2006-06-21 |
  | Casino Royale                           | R      |                 |   2006-06-21 |
  | Die Another Day                         | PG-13  | Martin Campbell |   2002-08-13 |
  | Jungle                                  | PG-13  | Martin Campbell |   2002-08-13 |
 
Scenario: add director to existing movie
  When I go to the edit page for "Casino Royale"
  And  I fill in "Director" with "Martin Campbell"
  And  I press "Update Movie Info"
  Then the director of "Casino Royale" should be "Martin Campbell"
 
Scenario: find movie with same director
  Given I am on the details page for "Die Another Day"
  When  I follow "Find Movies With Same Director"
  Then  I should be on the Similar Movies page for "Die Another Day"
  And   I should see "Jungle"
  But   I should not see "Harry Potter and the Half-Blood Prince"
 
Scenario: can't find similar movies if we don't know director (sad path)
  Given I am on the details page for "Mission: Impossible III"
  Then  I should not see "David Yates"
  When  I follow "Find Movies With Same Director"
  Then  I should be on the home page
  And   I should see "The 'Mission: Impossible III' contains no information of its director"