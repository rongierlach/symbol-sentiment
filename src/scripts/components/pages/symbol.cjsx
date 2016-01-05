React = require('react')
Router = require('react-router')

module.exports = React.createClass
  displayName: "Symbol"
  render: ->
    <div>
      Symbol: {@props.params.symbol.toUpperCase()}
    </div>
