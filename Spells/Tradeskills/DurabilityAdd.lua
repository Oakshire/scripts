--[[
    Script Name   : Spells/Tradeskills/DurabilityAdd.lua
    Script Purpose: Adds durability during crafting
    Script Author : Jabantiz
    Script Date   : 2012.09.08
    Script Notes  : 
--]]

function cast(Caster, Target, DurabilityAmount, Power)
	AddSpellBonus(Caster, 801, DurabilityAmount)
	SetPower( Caster, GetPower(Caster) - GetPCTOfPower(Caster, 15))
end

function remove(Caster, Target, DurabilityAmount)
    RemoveSpellBonus(Target)
end