--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Spellshield.lua
    Script Author  : neatz09
    Script Date    : 2020.01.31 06:01:36
    Script Purpose : 
                   : 
--]]

-- When damaged this spell will cast Shock of Mana on target's attacker.  
--     Inflicts 32 - 39 magic damage on target
--     Grants a total of 5 triggers of the spell.
--     This effect can only trigger once every 1.0 second.

function cast(Caster, Target, DmgType, MinVal, MaxVal, Triggers)
	AddProc(Target, 17, 100)
	SetSpellTriggerCount(Triggers, 1)
    Say(Caster, "This spell may need a based on level formula. also needs a trigger to lock out proc")

end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Triggers)
Spell = GetSpell(5445, GetSpellTier())
	if Type == 17 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinVal)
		SetSpellDataIndex(Spell, 2, MaxVal)
		CastCustomSpell(Spell, Caster, Target)
end
end

function remove(Caster, Target)
	RemoveProc(Target)
end