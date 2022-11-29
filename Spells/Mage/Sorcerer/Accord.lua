--[[
    Script Name    : Spells/Mage/Sorcerer/Accord.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.27 10:11:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PowerProc)
	AddProc(Target, 15, 10) 
end

function proc(Caster, Target, Type, PowerProc)
Spell = GetSpell(5499, GetSpellTier())
	if Type == 15 then
		SetSpellDataIndex(Spell, 0, PowerProc)

			CastCustomSpell(Spell, Caster, Target)
				end
end



function remove(Caster, Target)
	RemoveProc(Target)
end