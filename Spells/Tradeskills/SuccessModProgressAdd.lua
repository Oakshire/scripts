--[[
    Script Name   : Spells/Tradeskills/SuccessModProgressAdd.lua
    Script Purpose: Modifies Success while adding Progress during crafting
    Script Author : Jabantiz
    Script Date   : 2012.09.08
    Script Notes  : 
--]]

function cast(Caster, Target, SuccessMod, ProgressAmount)
	AddSpellBonus(Caster, 804, SuccessMod)
	AddSpellBonus(Caster, 802, ProgressAmount)
end

function remove(Caster, Target, SuccessMod, ProgressAmount)
    RemoveSpellBonus(Target)
end