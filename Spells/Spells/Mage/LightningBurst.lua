--[[
    Script Name    : Spells/Mage/LightningBurst.lua
    Script Author  : Ememjr
    Script Date    : 2017.11.11 03:11:14
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 15 - 20 magic damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
