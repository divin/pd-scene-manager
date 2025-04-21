-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

--- @class OtherScene : _Sprite
class("OtherScene").extends(gfx.sprite)

--- Initializes the other scene
--- @return nil
function OtherScene:init()
    Scene.super.init(self)

    local width, height = pd.display.getWidth(), pd.display.getHeight()
    local image = gfx.imageWithText("Other Scene", width, height, nil, nil, nil, kTextAlignment.center)
    self:setImage(image)

    -- Set the scene's properties
    self:setZIndex(0)
    self:setCenter(0.5, 0.5)
    self:moveTo(width / 2, height / 2)
    self:add()
end

--- Update the scene
--- @return nil
function OtherScene:update()
    if pd.buttonJustPressed(pd.kButtonA) then
        -- Switch to the other scene
        SCENE_MANAGER:switchScene(Scene)
    end
end
