--[[
    Script Name    : Spells/Priest/Cleric/Templar/Glory.lua
    Script Author  : neatz09
    Script Date    : 2020.02.29 04:02:59
    Script Purpose :
                   : 
--]]

-- On a hit this spell may cast Combat Glory on target.  Triggers about 1.0 times per minute. 
--     Heals group members (AE) for 470

function cast(Caster, Target, HealAmt)
AddProc(Target, 1, 4)
end

function proc(Caster, Target, Type, HealAmt)
    if Type == 1 then
		Spell = GetSpell(5447, GetSpellTier())
			SetSpellDataIndex(Spell, 0, HealAmt)
				CastCustomSpell(Spell, Caster, Target)
				end


end

function remove(Caster, Target)
RemoveProc(Target)
end
