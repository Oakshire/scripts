--[[
    Script Name    : Spells/Priest/Druid/Fury/FaeFire.lua
    Script Author  : neatz09
    Script Date    : 2019.10.28 05:10:28
    Script Purpose : 
                   : 
--]]

-- On any combat or spell hit this spell will cast Fae Fires on target of attack.  
--     Inflicts 195 heat damage on target
--     Grants a total of 3 triggers of the spell.

function cast(Caster, Target, DmgType, Dmg)
	AddProc(Target, 1, 100)
	SetSpellTriggerCount(3, 1)
end

function proc(Caster, Target, Type, DmgType, Dmg)
	ProcDamage(Caster, Target, "Fae Fires", DmgType, Dmg)
       RemoveTriggerFromSpell(1)
end

function remove(Caster, Target)
	RemoveProc(Target)
end