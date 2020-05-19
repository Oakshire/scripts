--[[
    Script Name   : Spells/Tradeskills/ProgressModDurabilityAdd
    Script Purpose: Modifies Progress while adding Durability during crafting
    Script Author : John Adams
    Script Date   : 2013.08.10
    Script Notes  : 
--]]

function cast(Caster, Target, ProgressMod, DurabilityAmount)
	AddSpellBonus(Caster, 802, ProgressMod)
	AddSpellBonus(Caster, 801, DurabilityAmount)
end

function remove(Caster, Target, ProgressMod, DurabilityAmount)
    RemoveSpellBonus(Target)
end