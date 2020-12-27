--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Challenge.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
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