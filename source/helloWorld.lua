-- Playdate SDK Core Libraries
import "CoreLibs/timer"
import "CoreLibs/crank"
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"

-- Import constats
import "constants"

-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

class("HelloWorld").extends(gfx.sprite)

-- Initialize the HelloWorld class
-- @return nil
function HelloWorld:init()
    HelloWorld.super.init(self)

    -- Set the sprite's image
    local maxWidth = 400
    local maxHeight = 240
    local sprite = gfx.sprite.spriteWithText(TEXT, maxWidth, maxHeight, nil, nil, nil, kTextAlignment.center)
    sprite:moveTo(maxWidth / 2, maxHeight / 2)
    sprite:add()

    -- Add scene
    self:setZIndex(-1)
    self:setCenter(0, 0)
    self:moveTo(0, 0)
    self:add()
end
