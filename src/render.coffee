export default render = (str, args...)=>
  new Function(
    ...args
    "return `#{str}`"
  )

String.prototype.render = (dict) ->
  render(this, ...Object.keys(dict)) ...Object.values(dict)

