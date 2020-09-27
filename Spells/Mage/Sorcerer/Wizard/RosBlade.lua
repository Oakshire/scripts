--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/RosBlade.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 10:10:48
    Script Purpose : 
                   : 
--]]

--On a combat hit this spell may cast Flametongue on target of attack.  Lasts for 3.0 seconds.  Triggers about 5.0 times per minute. 

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 19) 
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