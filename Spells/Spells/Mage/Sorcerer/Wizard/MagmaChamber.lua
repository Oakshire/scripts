--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/MagmaChamber.lua
    Script Author  : Zcoretri
    Script Date    : 2013.06.12 09:12:10
    Script Purpose : 
                   : 
--]]

-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end


