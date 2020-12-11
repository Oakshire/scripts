--[[
    Script Name    : Spells/AA/Thunderspike.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 12:12:24
    Script Purpose : 
                   : 
--]]

-- Inflicts 93 - 155 melee damage on target
-- Inflicts 187 - 312 magic damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
end