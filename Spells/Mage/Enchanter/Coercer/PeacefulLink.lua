--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/PeacefulLink.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 05:10:31
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell has a 33% chance to cast Linked Pain on target's attacker.  
--     Decreases threat priority of target by 1 position
-- Decreases Hate Gain of target by 10.7%

function cast(Caster, Target, Chance, Hate)
AddProc(Target, 16, Chance)
    Say(Caster, "Threat Positions not implemented.")

end

function proc(Caster, Target, Type, Hate)
Spell = GetSpell(5003, GetSpellTier())
	if Type == 16 then 
		SetSpellDataIndex(Spell, 0, Hate)
			CastCustomSpell(Spell, Caster, Target)
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end