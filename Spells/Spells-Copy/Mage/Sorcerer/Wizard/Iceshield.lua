--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Iceshield.lua
    Script Author  : neatz09
    Script Date    : 2019.10.25 05:10:11
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell will cast Frost Spikes on target's attacker.  
--     Inflicts 83 - 101 cold damage on target
--     Grants a total of 3 triggers of the spell.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 16, 100)
	SetSpellTriggerCount(3, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Frost Spikes", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
end

function remove(Caster, Target)
	RemoveProc(Target)
end