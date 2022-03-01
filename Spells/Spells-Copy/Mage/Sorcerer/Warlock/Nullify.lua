--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Nullify.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.07 08:03:56
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinHate, MaxHate)
    -- Interrupts target encounter
    Interrupt(Target)

    -- Decreases Threat to target encounter by 112 - 137 
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)

    -- Dazes target encounter
    --     If Target is not Epic
    -- Resistibility increases against targets higher than level 29.
    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end
