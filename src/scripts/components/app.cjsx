# please pardon me for this too simple code, it is an example on how to use this workflow framework
React = require('react')
Router = require('react-router')
{ Route, RouteHandler, Link } = Router
# LocalStorageUtil = require('../utils/LocalStorage')
# TransitionGroup = React.addons.CSSTransitionGroup

# LOCAL_STORAGE_PREFIX = 'wff'

# LocalStorageUtil.init(LOCAL_STORAGE_PREFIX)

# Components
Header = require './modules/header'
Footer = require './modules/footer'

module.exports = React.createClass
  displayName: "App"
  # mixins: [ Router.State ]
  render: ->
    <div>
      <Header />
      <div className="content">
        {@props.children}
      </div>
      <Footer />
    </div>
