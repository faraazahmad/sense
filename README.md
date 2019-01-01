# Sense

Community powered fake news checker <br>
*Color palette used: https://www.color-hex.com/color-palette/69731* (to be changed)

## Goals

* Show latest news using NewsAPI.
* Allow users to share links to news articles on their own.
* Allow community to categorize an article as real or fake using credible sources.
* (In the future) Using ML to categorize an article as possibly real or possibly fake.
* Provide users to log in through Google, Twitter and Github.

## Contributing

This project uses Ruby-2.5.1 and Rails 5.2.1. So any version of Ruby and Rails that is compatible with these should be fine. To locally run, this project you will also need API keys for NewsAPI and Github (used for OAuth). They should be named like so:

* CLIENT_ID (The client ID issued by Github when you create a Github app for OAuth)
* CLIENT_SECRET (The client secret issued by Github for the same purpose as above)
* NEWS_API_KEY (The API key provided by [NewsAPI](https://newsapi.org))

To run the server, first set the environment variables named as above, then run

```bash
rails s
```

### Help needed

Help is required for writing unit tests for the code.