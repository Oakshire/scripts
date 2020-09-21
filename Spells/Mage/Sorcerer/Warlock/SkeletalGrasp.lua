--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/SkeletalGrasp.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 11:10:35
    Script Purpose : 
                   : 
--]]


-- Roots target encounter
-- 15% chance to dispel when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, Chance)
  Say(Caster, "Resist level 29 or < not implemented.")
		AddControlEffect(Target, 5)	
	AddProc(Target, 15, Chance)
end

function proc(Caster, Target, Type, Chance)
local Spell = GetSpellID()	
if Type == 15 and HasSpellEffect(Target, Spell) then
		RemoveControlEffect(Target, 5)
			end
end

function remove(Caster, Target)
	RemoveControlEffect(Target, 5)
	RemoveProc(Target)
	
end