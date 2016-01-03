Bootstrap = require 'react-bootstrap'
{ Navbar, NavItem, Nav, Input, Button, Glyphicon } = Bootstrap

module.exports = React.createClass
  displayName: "Header"

  search: ->
    console.log 'search!'

  searchBtn: ->
    return(
      <Button onClick={@search}>
        Search
      </Button>
    )

  render: ->

    <Navbar className="navbar">

      <Navbar.Header pullLeft>
        <Navbar.Brand>
          <div className="logo"></div>
          <span className="light-grey brand-text">CMT</span>
        </Navbar.Brand>
      </Navbar.Header>

      <Navbar.Form pullRight>
        <Input type="text" buttonAfter={@searchBtn()} placeholder="Symbol"/>
      </Navbar.Form>
    </Navbar>



    # <div class="input-group-btn">
    # <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
    # </div>
