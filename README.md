** [SBF (Social Brain Framework)](http://sharismlab.com/) is a node module for extraction, mining and analysis of social networks streams that implements the model of a brain as a backbone **

- Jobs are written in Javascript or [Coffeescript](http://jashkenas.github.com/coffee-script/) and run in [Node.JS](http://nodejs.org/) - jobs are concise, asynchronous and _FAST_
- Includes a robust framework for scraping, selecting and traversing data from social networks
- Includes a data validation and sanitization framework
- Easily handle a variety of input / output - files, databases, streams, stdin/stdout, etc. from different sources and web services
- Speed up execution by distributing work across multiple processes and (soon) other servers
- Manage & run jobs through a web interface

Follow [@sharismlab](http://twitter.com/sharismlab) or visit [http://sharimlab.com/](http://sharimlab.com/) for updates.


## Docs

* To-do list : https://trello.com/board/social-brain-framework/4feda77c710a5000207adc23
* Docs : https://docs.google.com/folder/d/0B7NEXxu0b66PVExpOFZWSldlMWs/edit
* Questions : https://groups.google.com/forum/#!forum/social-brain-framework

You can generate the code documentation by typing or read the docs at : http://yourinstall/docs/

    cake docs

## Run the tests

Tests for the app are written with Mocha and Chai.

    cake test