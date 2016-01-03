React = require('react')
Router = require('react-router')

module.exports = React.createClass
  displayName: "Symbol"
  render: ->
    <div>
      home {@props.params.symbol || 'no symbol given'}
    </div>
