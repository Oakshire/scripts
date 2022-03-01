--[[
    Script Name    : Spells/Priest/Druid/Regrowth.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:11
    Script Purpose : 
                   : 
--]]

-- Heals target for 34 - 42 instantly and every 2 seconds

function cast(Caster, Target, MinVal, MaxVal)
	SpellHeal("Heal", MinVal, MaxVal)
end

function tick(Caster, Target, MinVal, MaxVal)
	SpellHeal("Heal", MinVal, MaxVal)
end