SidescrollerState = require 'states/sidescroller_state'
MenuState = require 'states/menu_state'

game = new Rogue.Game
  fps: true
  width: 1000
  height: 600
game.input = new Rogue.Keyboard game.canvas
game.mouse = new Rogue.Mouse game
game.assets = assets = new Rogue.AssetManager
  baseUrl: ""
  packs:
    core: [
      {name:"bg1",src:"img/b1.png"}
      {name:"bg2",src:"img/b2.png"}
      {name:"red",src:"img/1.png"}
      {name:"firePlane",src:"img/firePlane.png"}
      {name:"jump",src:"sound/jump.ogg",alt:"sound/jump.mp3"}
      {name:"menuBlock",src:"shitty_img/shitty_block.png"}
      {name:"littleFire",src:"img/littleFire.gif"}
    ]
  preload: false
assets.on "load","core", (asset,percent) -> console.log "Assets loading: #{percent}"
assets.on "complete","core", -> console.log "Assets loaded"; game.start MenuState
assets.download("core")

module.exports = game
