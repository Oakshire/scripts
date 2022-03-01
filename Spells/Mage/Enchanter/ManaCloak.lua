--[[
    Script Name    : Spells/Mage/Enchanter/ManaCloak.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 02:08:29
    Script Purpose : 
                   : 
--]]


-- When any damage is received this spell will cast Breeze on target.  
--     Increases power of caster by 103
--     Grants a total of 3 triggers of the spell.

function cast(Caster, Target, Pwr)
	AddProc(Target, 15, 100, nil, 1)
		Say(Caster, "need to pass Breeze for the heal name")
		SetSpellTriggerCount(3, 1)
end

function proc(Caster, Target, Type, Pwr)
	SpellHeal("Power", Pwr)
		RemoveTriggerFromSpell(1)
end

function remove(Caster, Target)
	RemoveProc(Target)
end