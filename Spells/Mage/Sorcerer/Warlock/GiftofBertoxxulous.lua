--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/GiftofBertoxxulous.lua
    Script Author  : neatz09
    Script Date    : 2020.04.19 03:04:43
    Script Purpose : 
                   : 
--]]

-- On a hostile spell cast this spell will cast Abhorrence on target of spell. 
--     Inflicts 12 - 22 poison damage on target encounter

function cast(Caster, Target)
AddProc(Target, 5, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
Spell = GetSpell(5439, GetSpellTier())
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