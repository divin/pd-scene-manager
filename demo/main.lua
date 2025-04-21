-- Playdate SDK Core Libraries
import "CoreLibs/timer"
import "CoreLibs/crank"
import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"

-- Define shorthands
local pd <const> = playdate
local gfx <const> = pd.graphics

-- Import library
import "../source/sceneManager"
import "../tests/testRunner"

-- Import scenes
import "scene"
import "otherScene"

-- Initialize object
SCENE_MANAGER = SceneManager()
SCENE_MANAGER:switchScene(Scene)

-- Run tests
TestRunner:test("tests/testRunner.lua", function()
    -- Test cases go here
    -- Example: assertEqual(1, 1)
end)

-- Main loop
function pd.update()
    -- Update sprite & timers
    gfx.sprite.update()
    pd.timer.updateTimers()
end
