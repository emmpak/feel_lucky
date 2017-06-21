Feel Lucky
=================
Are you feeling lucky today? Pick a color and let your imagination run wild.

### Tech

* Ruby, Sinatra, PostgrSQL, DataMapper, HTML, CSS, JavaScript RSpec, Capybara

### Live Version
**[Feel Lucky](https://feel-lucky.herokuapp.com/)**

Note that the Google Custom Search API key has a very low call threshold and you might not find yourself lucky. As an alternative, you can setup this app locally (see next section).

### Local Setup

###### Initial Steps

* Clone repository
* `cd` to the project's root directory
* Run `gem install bundler`
* Run `bundle install` to install all of the required gems
* Create the following databases `feel_lucky_development` and `feel_lucky_test`

###### Register for a Google Custom Search API key

Go to [Custom Search API ](https://developers.google.com/custom-search/json-api/v1/overview) and click on **'Get a Key'** button under the prerequisites section. Make a note of your API Key as you will need it later.

###### Create your Google Custom Search Engine

Go to [Custom Search Engine](https://cse.google.co.uk/cse/all) and click on **Add** to create your own custom search engine. You can select *'Search the entire web but emphasise included sites'* from the **Sites to Search** section if you would like to search any Google images. Make a note of your **Search engine ID**.

###### Setup your environment variables
In your root directory, create a `.env` file and add the following:

```
API_KEY = YOUR API KEY
CX_ID = YOUR SEARCH ENGINE ID
```

##### Final Steps
* Run `rspec` to make sure that all tests are passing
* Uncomment the API response on line 26 in the `app.rb` file and remove the stubbed response on line 29. You can use the stubbed response to avoid hitting the API call limit.
* Run `rackup`
* Visit [localhost:9292](localhost:9292) in a browser
* Pick a color

### Further Improvements

* Add a **Search again** button on `/search` page
* Ability to run previous searches
* Add travis
