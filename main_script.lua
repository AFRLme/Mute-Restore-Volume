--[[
Mute/Restore Volume [V1] (20/03/2014)
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
 if not cond:getBool(VConditionValue) then -- if not muted then...
  for i = 0, 4 do -- (0, 2) if you are still on 3.7.1 or below (eMovieVolume(3) & eGlobalVolume(4) from visionaire studio 4.0 onwards)
   getObject("Values[vol_" .. i .. "]"):setValue(VValueInt, getVolume(i)) -- store volume i into linked editor value
   setVolume(i, 0) -- set volume i to 0
  end
  cond:setValue(VConditionValue, true) -- set muted condition to true
 else -- if already muted then do...
  for i = 0, 4 do -- (0, 2) if you are still on 3.7.1 or below (eMovieVolume(3) & eGlobalVolume(4) from visionaire studio 4.0 onwards)
   setVolume(i, getObject("Values[vol_" .. i .. "]"):getInt(VValueInt)) -- return volume level for i based on linked editor value
  end
  cond:setValue(VConditionValue, false) -- set muted condition to false
 end
 -- startVolSlider() -- uncomment this line if you are also using the volume slider script
end
