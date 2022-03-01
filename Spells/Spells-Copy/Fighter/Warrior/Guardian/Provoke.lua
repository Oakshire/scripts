--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Provoke.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 12:11:28
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
