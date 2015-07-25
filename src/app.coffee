React = require "react"

Terminal = require "./js/terminal/terminal.coffee"

App = React.createClass
  render: ->
    <div>
    	<Terminal/>
    </div>

document.addEventListener 'DOMContentLoaded', ->
	React.render <App/>, document.getElementById 'hook'