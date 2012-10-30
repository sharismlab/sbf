## Main file for module

sbf = {}

# Twitter
sbf.twitter = (consumerKey, consumerSecret) ->
    twitterAPI = require '../vendor/twitterAPI'
    twitterAPI.loginToTwitter (consumerKey, consumerSecret)

