OneTimeClickLink = React.createClass
  getInitialState: ->
    {clicked: false}
  linkClicked: (event) ->
    @setState(clicked: true)
  child: ->
    {
      false: React.DOM.a( { href: "javascript:void(0)", onClick: @linkClicked }, "Click Me" )
      true: React.DOM.span({}, "Namaste!")
    }[@state.clicked]
  render: ->
      React.DOM.div( { id: "one-time-click-link" }, @child())

$ ->
  oneTimeClickLink = React.createFactory(OneTimeClickLink)

  ReactDOM.render(
    oneTimeClickLink(),
    document.getElementById("start")
  )
