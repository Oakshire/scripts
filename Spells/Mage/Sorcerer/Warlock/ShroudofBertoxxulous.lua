--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/ShroudofBertoxxulous.lua
    Script Author  : neatz09
    Script Date    : 2020.09.17 02:09:14
    Script Purpose : 
                   : 
--]]

-- When damaged this spell has a 25% chance to cast Nihilistics on target's attacker.  
--     Inflicts 39 - 47 poison damage on target encounter
function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 15, 25) 
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
Spell = GetSpell(5437, GetSpellTier())
	if Type == 15 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinVal)
		SetSpellDataIndex(Spell, 2, MaxVal)
			CastCustomSpell(Spell, Caster, Target)
				end
end




function remove(Caster, Target)
	RemoveProc(Target)
end