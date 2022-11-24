--[[
    Script Name    : Spells/Mage/Sorcerer/BurningRadiance.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.23 09:11:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 19) 
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
Spell = GetSpell(5436, GetSpellTier())
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