## Main file for module
sbf = {}

# Twitter
sbf.twitter = (consumerKey, consumerSecret) ->
    twitterAPI = require '../vendor/twitterAPI'
    twitterAPI.loginToTwitter (consumerKey, consumerSecret)
    this = twitterAPI

# Weibo
sbf.weibo = (consumerKey, consumerSecret) ->
    weiboAPI = require '../vendor/weiboAPI'
    weiboAPI.loginToWeibo (consumerKey, consumerSecret)
    this = weiboAPI

# Create social neurons


# export methods
module.exports =
	twitter : twitter
    weibo: weibo