--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/HolyStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.10.08 07:10:08
    Script Purpose : 
                   : 
--]]

-- Inflicts 112 - 186 divine damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax)
 SpellDamage(Target, DmgType, MinVal, MaxVal)  
end


-- Inflicts 45 - 75 divine damage on target every 4 seconds
function tick(Caster, Target)
  SpellDamage(Target, DotType, DotMin, DotMax)
end
