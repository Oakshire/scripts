--[[
    Script Name   : Spells/Tradeskills/DurabilityAddProgressAdd.lua
    Script Purpose: Adds durability and progress during crafting
    Script Author : Jabantiz
    Script Date   : 2012.09.08
    Script Notes  : 
--]]

function cast(Caster, Target, ProgressAmount, DurabilityAmount)
	AddSpellBonus(Caster, 802, ProgressAmount)
	AddSpellBonus(Caster, 801, DurabilityAmount)
end

function remove(Caster, Target, ProgressAmount, DurabilityAmount)
    RemoveSpellBonus(Target)
end
