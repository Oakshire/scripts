--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/SurgeofRo.lua
    Script Author  : neatz09
    Script Date    : 2019.10.25 05:10:37
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On a hostile spell cast this spell will cast Flame Surge on target of spell.  Lasts for 3.0 seconds.  
--     Inflicts 38 - 46 heat damage on target instantly and every second
function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 5, 100) 
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
Spell = GetSpell(5496, GetSpellTier())
	if Type == 5 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinVal)
		SetSpellDataIndex(Spell, 2, MaxVal)
			CastCustomSpell(Spell, Caster, Target)
				end
end

function remove(Caster, Target)
	RemoveProc(Target)
end