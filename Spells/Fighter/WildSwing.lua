--[[
    Script Name    : Spells/Fighter/WildSwing.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:10
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 5 - 8 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    Say(Caster, "Facing Target Not Implemented.")

end

-- If facing target
