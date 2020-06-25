--[[
	Script Name	: Spells/Fighter/Warrior/Berserker/Mock.lua
	Script Purpose	: Generic Taunt script
	Script Author	: Dello
	Script Date	: 10/06/2014
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
