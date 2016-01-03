React = require('react')
Router = require('react-router')

Bootstrap = require 'react-bootstrap'
{ PageHeader } = Bootstrap

module.exports = React.createClass
  displayName: "Home"
  render: ->
    <div className="home">
      <PageHeader>Home</PageHeader>
      <p>My point is, think twice about using filler content when you have the power to do otherwise but don’t hesitate to realize that there are legitimate situations where tossing in some placeholder copy won’t represent the utter destruction of the integrity of the design industry.</p>
    </div>
