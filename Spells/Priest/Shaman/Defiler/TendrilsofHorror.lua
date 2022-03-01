--[[
    Script Name    : Spells/Priest/Shaman/Defiler/TendrilsofHorror.lua
    Script Author  : neatz09
    Script Date    : 2020.03.24 07:03:47
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell has a 8% chance to cast Tendrils of Fear on target's attacker.  Lasts for 36.0 seconds.  
--     Decreases DPS of target by 15.2
--     Decreases Haste of target by 12.1

function cast(Caster, Target, Chance, Dps, Haste)
	AddProc(Target, 15, Chance)
end

function proc(Caster, Target, Type, Chance, Dps, Haste)
	if Type == 15 then
		Spell = GetSpell(5450, GetSpellTier())
			SetSpellDataIndex(Spell, 0, Dps)
				SetSpellDataIndex(Spell, 1, Haste)
					CastCustomSpell(Spell, Caster, Target)
						end
end

function remove(Caster, Target)
	RemoveProc(Target)
end