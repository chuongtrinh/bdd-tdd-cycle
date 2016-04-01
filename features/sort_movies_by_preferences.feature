Feature: display movies sorted by different criteria
 
  As a movie buff
  So that I can quickly find movies based on my preferences
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Amelie                  | R      | 25-Apr-2001  |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |

  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  When I follow "Movie Title"
  Then I should see "Aladdin" before "Amelie"
  Then I should see "Amelie" before "Chicken Run"

Scenario: sort movies in oldest to newest order of release date
  When I follow "Release Date"
  Then I should see "Aladdin" before "Chicken Run"
  Then I should see "Chicken Run" before " The Incredibles"