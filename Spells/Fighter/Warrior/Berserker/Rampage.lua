--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Rampage.lua
    Script Author  : neatz09
    Script Date    : 2020.05.10 07:05:14
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell will cast Rampaging Blow on target of attack.  
--     Grants a total of 10 triggers of the spell.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Needs AoE override. This spell really should cast a subspell")
		AddProc(Target, 3, 100)
		SetSpellTriggerCount(10, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	if Type == 3 then
        ---     Inflicts 250 - 466 melee damage on targets in Area of Effect
        ProcDamage(Caster, Target, "Rampaging Blow", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
