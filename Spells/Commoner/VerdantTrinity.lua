--[[
    Script Name    : Spells/Commoner/VerdantTrinity.lua
    Script Author  : neatz09
    Script Date    : 2021.01.22 01:01:19
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Val1, Val2)
	Percentage = MakeRandomFloat(Val1, Val2)
	SpellHealPct("Heal", Percentage, false, false, Target, 2)
end