--[[
    Script Name    : Spells/Priest/Druid/Bloom.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 03:11:49
    Script Purpose : 
                   : 
--]]

-- Heals target for 55 - 67
-- Heals target for 9 - 11 every second

function cast(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
	SpellHeal("Heal", MinVal, MaxVal)
end

function tick(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
	SpellHeal("Heal", TickMin, TickMax)
end