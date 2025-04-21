-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

--- @class Scene : _Sprite
class("Scene").extends(gfx.sprite)

--- Initializes the scene
--- @return nil
function Scene:init()
    Scene.super.init(self)

    local width, height = pd.display.getWidth(), pd.display.getHeight()
    local image = gfx.imageWithText("Scene", width, height, nil, nil, nil, kTextAlignment.center)
    self:setImage(image)

    -- Set the scene's properties
    self:setZIndex(0)
    self:setCenter(0.5, 0.5)
    self:moveTo(width / 2, height / 2)
    self:add()
end

--- Update the scene
--- @return nil
function Scene:update()
    if pd.buttonJustPressed(pd.kButtonA) then
        -- Switch to the other scene
        SCENE_MANAGER:switchScene(OtherScene)
    end
end
