--[[
    Script Name    : Spells/Fighter/Warrior/Anger.lua
    Script Author  : Dello
    Script Date    : 2014.07.11 03:07:45
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinTaunt, MaxTaunt)
    -- Increases Threat to target by 51 - 62 
    if MaxTaunt ~= nil and MinTaunt < MaxTaunt then
        AddHate(Caster, Target, math.random(MinTaunt, MaxTaunt))
    else
        AddHate(Caster, Target, MinTaunt)
    end

    -- Interrupts target
    if target ~= nil then
        Interrupt(Caster, Target)
    end
end
