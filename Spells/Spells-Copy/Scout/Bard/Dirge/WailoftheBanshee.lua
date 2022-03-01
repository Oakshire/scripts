--[[
    Script Name    : Spells/Scout/Bard/Dirge/WailoftheBanshee.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:31
    Script Purpose : 
                   : 
--]]
--     Inflicts 290 - 483 disease damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin)
 SpellDamage(Target, DmgType, MinVal, MaxVal)  
-- Applies Banshee's Scream on termination.
-- Inflicts 97 disease damage on target encounter instantly and every 4 seconds
SpellDamage(Target, DotType, DotMin)
end

function tick(Caster, Target)
  SpellDamage(Target, DotType, DotMin, DotMax)
end

