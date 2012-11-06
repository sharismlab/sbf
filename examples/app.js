require('coffee-script');
sbf = require('../src/sbf');

// API keys
// those should be obtained via auth, using everyauth for example
twitter_key = "XXXX";
twitter_secret = "XXXX";
twitter_token = "XXXX";
twitter_tokenSecret = "XXXX";


weibo_key = "XXXX";
weibo_secret = "XXXX";
weibo_token = "XXX";
weibo_tokenSecret = "XXX";

// init personal connections to the APIs
sbf.twitter.init (twitter_key, twitter_secret, twitter_token, twitter_tokenSecret );
sbf.weibo.init (weibo_key, weibo_secret, weibo_token, weibo_tokenSecret );

// process Weibo timeline and extract neurons/dendrits/messages
sbf.weibo.getTimeline( function(timeline){
	sbf.analyzeTimeline(timeline, function(events) {
		console.log(events);
	});
})