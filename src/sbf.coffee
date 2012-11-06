## Main file for module

# our object to be exported
sbf = {}

# enables api routing
sbf.routes = () ->
	include "express"
	include "routes/api"

# Twitter
twitterAPI = require './lib/twitterAPI'
sbf.twitter = twitterAPI

sbf.twitter.init = (consumerKey, consumerSecret, accessToken, tokenSecret) ->
    twitterAPI.loginToTwitter consumerKey, consumerSecret


# Weibo
weiboAPI = require './lib/weiboAPI'
sbf.weibo = weiboAPI

sbf.weibo.init = (consumerKey, consumerSecret, accessToken, tokenSecret) ->
    weiboAPI.loginToWeibo consumerKey, consumerSecret


# Analyze Timelines
sbf.analyzeTimeline = (timeline, callback) ->
    timelineFunctions = require './lib/timelineFunctions'
    events = timelineFunctions.eventEmitter
    timelineFunctions.analyzeTimeline timeline, callback(events)

# export methods
module.exports =
	# sbf: sbf
	analyzeTimeline: sbf.analyzeTimeline
    routes: sbf.routes
	twitter : sbf.twitter
    weibo: sbf.weibo
