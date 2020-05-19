--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Cease.lua
    Script Author  : neatz09
    Script Date    : 2019.10.07 03:10:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    -- Interrupts target encounter
   Interrupt(Caster, Target)

    -- Decreases Threat to target by 355 - 434
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end

-- Stifles target
--     If Target is not Epic
-- Resistibility increases against targets higher than level 29.
    if not IsEpic(Target) then
        AddControlEffect(Target, 2)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end