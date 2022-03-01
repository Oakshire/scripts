--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/BoonoftheDamned.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.07 07:03:47
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell has a 10% chance to cast Mana Boon on target.  Lasts for 16.0 seconds.  
--     Increases power of target by 3 instantly and every 4 seconds
--     Increases power of caster by 3 instantly and every 4 seconds
-- Causes 2% Threat to transfer to target when in combat
--     If Fighter

function cast(Caster, Target, Chance, Pwr, Hate)
local Class = GetArchetypeName(Target)
	if Class == "Fighter" then
		AddThreatTransfer(Caster, Target, Hate)
			end
	AddProc(Target, 16, Chance)
end

function proc(Caster, Target, Type, Chance, Pwr, Hate)
Spell = GetSpell(5440, GetSpellTier())
if Type == 16 then
	SetSpellDataIndex(Spell, 0, Pwr)
		CastCustomSpell(Spell, Caster, Target)
			end
end

function remove(Caster, Target)
	RemoveThreatTransfer(Caster)
	RemoveProc(Target)
end