--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Theorems.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 04:10:42
    Script Purpose : 
                   : 
--]]


-- When damaged with a spell this spell will cast Theorems on target.  
--     Inflicts 555 - 678 mental damage on target
--     Grants a total of 3 triggers of the spell.
function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 17, 100)
	SetSpellTriggerCount(3, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	ProcDamage(Caster, Target, "Theorems", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
end

function remove(Caster, Target)
	RemoveProc(Target)
end