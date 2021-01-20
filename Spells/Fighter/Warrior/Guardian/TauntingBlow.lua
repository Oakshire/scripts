--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/TauntingBlow.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 03:11:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinTauntVal, MaxTauntVal)

    -- Inflicts 3 - 6 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)

end
