--[[
    Script Name    : Spells/Tradeskills/DurabilityModSuccessAdd.lua
    Script Author  : John Adams
    Script Date    : 2013.11.23 12:11:39
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Reduces experimental durability gain by 1.0%.
-- Increases experimental success chance by 2.0%
-- Cannot be modified except by direct means

function cast(Caster, Target, DurabilityMod, SuccessAdd)
	AddSpellBonus(Caster, 800, DurabilityMod)
	AddSpellBonus(Caster, 804, SuccessAdd)
end

function remove(Caster, Target, DurabilityMod, SuccessAdd)
    RemoveSpellBonus(Target)
end