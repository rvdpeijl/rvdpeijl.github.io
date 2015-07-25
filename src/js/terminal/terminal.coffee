React = require('react')

Terminal = React.createClass

	render: ->
		<div id="terminal">
			<div id="titleBar">
				<div className="buttons">
					<div className="button close"></div>
					<div className="button minimize"></div>
					<div className="button maximize"></div>
				</div>
			</div>

			<div id="window">
				<span>> @fullName()</span>
				<span className="output">"Robbin van der Peijl"</span>
				<span>> @getSkillz()</span>
				<span className="output">undefined</span>
				<span>> @getSkills()</span>
				<span className="output">['JavaScript', 'Node', 'React', 'Flux', 'Less']
				</span>
			</div>
		</div>

module.exports = Terminal
