--[[
    Script Name   : Spells/Tradeskills/DurabilityModProgressAdd.lua
    Script Purpose: Modifies Durability while adding Progress during crafting
    Script Author : John Adams
    Script Date   : 2013.08.10
    Script Notes  : 
--]]

function cast(Caster, Target, DurabilityMod, ProgressAmount)
	AddSpellBonus(Caster, 801, DurabilityMod)
	AddSpellBonus(Caster, 802, ProgressAmount)
end

function remove(Caster, Target, SuccessMod, ProgressAmount)
    RemoveSpellBonus(Target)
end