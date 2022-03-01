--[[
    Script Name    : Spells/Mage/StormofLightning.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 01:12:05
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 22 - 27 magic damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
