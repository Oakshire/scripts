--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Mindbend.lua
    Script Author  : neatz09
    Script Date    : 2020.02.13 05:02:44
    Script Purpose : 
                   : 
--]]

-- On any combat or spell hit this spell will cast Disorientation on target.  Lasts for 4.0 seconds.  
--     Stuns target
--         If Target is not Epic
--     Grants a total of 3 triggers of the spell.

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, Triggers)
    Say(Caster, "Procs need work")
SetSpellTriggerCount(Triggers, 1)
AddProc(Target, 16, 100)
AddProc(Target, 17, 100)
end

function proc(Caster, Target, Type, Triggers)
Tier = GetSpellTier()    
	if Type == 16 or Type == 17 then
		CastSpell(Target, 5443, Tier, Caster) 
			RemoveTriggerFromSpell()
				end
end

function remove(Caster, Target)
	RemoveProc(Target)
end