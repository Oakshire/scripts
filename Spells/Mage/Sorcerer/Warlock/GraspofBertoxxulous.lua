--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/GraspofBertoxxulous.lua
    Script Author  : Neatz09
    Script Date    : 9.25.2020
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell may cast Venomous Runes on target of attack.  Lasts for 16.0 seconds.  Triggers about 2.0 times per minute. 
--     Inflicts 17 - 21 poison damage on target instantly and every 4 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 25) 
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
Spell = GetSpell(5434, GetSpellTier())
	if Type == 3 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinVal)
		SetSpellDataIndex(Spell, 2, MaxVal)
			CastCustomSpell(Spell, Caster, Target)
				end
end




function remove(Caster, Target)
	RemoveProc(Target)
end