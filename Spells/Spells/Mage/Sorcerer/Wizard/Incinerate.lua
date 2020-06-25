--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Incinerate.lua
    Script Author  : Zcoretri
    Script Date    : 2013.07.12 07:08:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function remove(Caster, Target, DoTType, MinVal, MaxVal)
    
end



