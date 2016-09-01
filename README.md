# Fantasy Football Draft Companion

A rails application that makes dominating your fantasy football draft easy.

Renders a simple page that lists all players, color coded by position. This allows you to easily view tiers of players.

Utilizes the [Fantasy Football Nerd API](http://www.fantasyfootballnerd.com/) to rank all players by overall position using the composite rankings the site outputs. 


##Running locally
The app uses [ActiveRestClient](https://github.com/whichdigital/active-rest-client) to query the Fantasy Football Nerd API to obtain player rankings. These are then saved to a local database.

This app requires an API Key for Fantasy Football Nerd.

To populate DB: run `rails c` and set `'ENV["fantasy_nerd_api_key"] = <your api key>`. Then run `PlayersPopulator.populate_all`. This will run for a minute or two to populate the db with player info.

Then run `rails s` to view the results via a browser. The app requires the user to follow along the draft and select which players have been selected.


##Updates
Aug 31, 2015
- color codes player positions
- allows you to filter by position
- allows you to see your roster
- incorporates aggregate data from fantasy football nerd 

##To do
- add tests
- chart that allows you to see tiers of players in real time: priority!
- information that shows you the value of the next best position player
- a chart showing last drafted, to pickup on drafting patterns
- with info of other teams, can tell you what positions they likely will pick up
