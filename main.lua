-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

display.setDefault( "background", 1, 1, 1 )

display.setDefault( "anchorX", 0 )
display.setDefault( "anchorY", 0 )

composer.gotoScene( "loginScene" )