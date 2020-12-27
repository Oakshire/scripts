--[[
    Script Name    : Spells/Priest/Cleric/Templar/WarringDeities.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 04:10:32
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 58 - 71 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax)
 SpellDamage(Target, DmgType, MinVal, MaxVal)  
end

-- Inflicts 24 - 30 divine damage on target every 4 seconds
function tick(Caster, Target)
  SpellDamage(Target, DotType, DotMin, DotMax)
end

function remove(Caster, Target)  
end