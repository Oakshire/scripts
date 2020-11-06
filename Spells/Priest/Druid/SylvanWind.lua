--[[
    Script Name    : Spells/Priest/Druid/SylvanWind.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 03:11:57
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 61 - 74
-- Heals group members (AE) for 10 - 12 every second

function cast(Caster, Target, HealMin, HealMax, TickMin, TickMax)
	SpellHeal("Heal", HealMin, HealMax)
end

function tick(Caster, Target, HealMin, HealMax, TickMin, TickMax)
	SpellHeal("Heal", TickMin, TickMax)
end