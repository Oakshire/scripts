--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Hemorrhage.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 05:11:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)

    -- Inflicts 9 - 12 mental damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Interrupts target
    Interrupt(Caster, Target)

end
