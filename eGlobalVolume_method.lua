--[[
Mute/Restore Volume (global method; visionaire studio 4.0+ only) [V1] (20/03/2014)
Written by AFRLme [Lee Clarke]
-- + --
alternatingfrequencies@hotmail.com | skype @ AFRLme
-- + --
This script is donation optional. In game credit is non-negotiable.
You are free to: ¹ use it in your game(s). ² modify the script.
Do not remove - or edit - this comment block.
--]]

-- * local variables * --
local cond = getObject("Conditions[cond_mute]") -- store muted condition

-- * function that determines if sound should be muted or restored * --
function globalMute()
 if not cond:getBool(VConditionValue) then setVolume(eGlobalVolume, 0); cond:setValue(VConditionValue, true) else setVolume(eGlobalVolume, 100); cond:setValue(VConditionValue, false) end
end
