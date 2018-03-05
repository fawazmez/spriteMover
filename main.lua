-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Fawaz Mezher
-- Created on: March 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local movingSpeed = 4

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "graveyard background image"

local Tile = display.newImageRect( "./assets/textures/Tile.png", 5, 5 )
Tile.x = display.contentCenterX 
Tile.y = display.contentCenterY 
Tile.id = "Tile"

-- character image with width and height
local knightFall = display.newImageRect("./assets/sprites/knightFall.png", 500, 500)
knightFall.x = 0
knightFall.y = display.contentHeight - 600 -- note I am using not the center but the height of the diaplay
knightFall.ID = "knightFall"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    knightFall.x = knightFall.x + movingSpeed 
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- Moveknightfall will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)