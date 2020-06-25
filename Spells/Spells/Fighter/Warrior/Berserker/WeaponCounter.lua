--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WeaponCounter.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 05:10:46
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell will cast Counterattack on target's attacker.
--     Inflicts 43 - 72 melee damage on target
--     Grants a total of 3 triggers of the spell.

function cast(Caster, Target, DmgType, MinVal, MaxVal, Triggers)
	AddProc(Target, 15, 100)
	SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Triggers)
  
if Type == 15 then
        --         Inflicts 79 - 133 piercing damage on target
        ProcDamage(Caster, Target, "Counterattack", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
