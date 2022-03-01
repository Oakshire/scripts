--[[
    Script Name    : Spells/Scout/Predator/Stalk.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:45
    Script Purpose : 
                   : 
--]]

-- Decreases Threat to target by 2,661 - 4,435
-- Grants stealth to caster
-- Suspends caster's movement speed enhancements
function cast(Caster, Target, HateLow, HateHigh)
    AddHate(Caster, Target, math.random(HateLow, HateHigh), 1)
	Stealth(1, Caster)
end

function remove(Caster, Target)
	RemoveStealth()
end