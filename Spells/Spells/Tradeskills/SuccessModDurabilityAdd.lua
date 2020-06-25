--[[
    Script Name   : Spells/Tradeskills/SuccessModDurabilityAdd.lua
    Script Purpose: Modifies Success while adding Durability during crafting
    Script Author : Jabantiz
    Script Date   : 2012.09.08
    Script Notes  : 
--]]

function cast(Caster, Target, SuccessMod, DurabilityAmount)
	AddSpellBonus(Caster, 804, SuccessMod)
	AddSpellBonus(Caster, 801, DurabilityAmount)
end

function remove(Caster, Target, SuccessMod, DurabilityAmount)
    RemoveSpellBonus(Target)
end