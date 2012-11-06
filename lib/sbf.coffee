## Main file for module

# our object to be exported
sbf = {}

# enables api routing
sbf.routes = () ->
	include "express"
	include "routes/api"

# Twitter
sbf.twitter.init = (consumerKey, consumerSecret) ->
    twitterAPI = require '../vendor/twitterAPI'
    twitterAPI.loginToTwitter (consumerKey, consumerSecret)
    this = twitterAPI

# Weibo
sbf.weibo.init = (consumerKey, consumerSecret) ->
    weiboAPI = require '../vendor/weiboAPI'
    weiboAPI.loginToWeibo (consumerKey, consumerSecret)
    this = weiboAPI

# Analyze Timelines
sbf.analyzeTimeline = (timeline, callback) ->
    timelineFunctions = require '../vendor/timelineFunctions'
    events = timelineFunctions.eventEmitter
    timelineFunctions.analyzeTimeline timeline, callback(events)

# export methods
module.exports =
	# sbf: sbf
	analyzeTimeline: sbf.analyzeTimeline
    routes: sbf.routes
	twitter : sbf.twitter
    weibo: sbf.weibo
