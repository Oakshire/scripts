--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Converge.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 10:10:56
    Script Purpose : 
                   : 
--]]

-- Causes 2% Threat to transfer to target when in combat
--     If Fighter
--GetClass(Target) == fighter then AddThreatTransfer
-- When damaged with a melee weapon this spell has a 10% chance to cast Concurrence on target.  
--     Increases power of target by 12
--     Increases power of caster by 12

function cast(Caster, Target, Chance, Pwr, Hate)
local Class = GetArchetypeName(Target)
	if Class == "Fighter" then
		AddThreatTransfer(Caster, Target, Hate)
			end
	AddProc(Target, 16, Chance)
end

function proc(Caster, Target, Type, Chance, Pwr, Hate)
Spell = GetSpell(5441, GetSpellTier())
if Type == 16 then
	SetSpellDataIndex(Spell, 0, Pwr)
		CastCustomSpell(Spell, Caster, Target)
			end
end

function remove(Caster, Target)
	RemoveThreatTransfer(Caster)
	RemoveProc(Target)
end