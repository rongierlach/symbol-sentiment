require '../../../public/main.css'

React = require 'react'
ReactDOM = require 'react-dom'

# Assign React to Window so the Chrome React Dev Tools will work.
window.React = React

ReactRouter = require('react-router')
{Router, Route, IndexRoute, NotFoundRoute} = ReactRouter
createBrowserHistory = require 'history/lib/createBrowserHistory'


# Require route components.
App = require './app'
Home = require './pages/home'
Symbol = require './pages/symbol'

routes = (
  <Route path="/" component={App}>
    <IndexRoute component={Home} />
    <Route path="/:symbol" component={Symbol} />
  </Route>
)

history = createBrowserHistory forceRefresh: false

ReactDOM.render(
  <Router routes={routes} history={history}/>
  , document.getElementById("react-entry")
)
