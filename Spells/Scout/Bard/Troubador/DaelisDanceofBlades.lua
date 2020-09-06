--[[
    Script Name    : Spells/Scout/Bard/Troubador/DaelisDanceofBlades.lua
    Script Author  : neatz09
    Script Date    : 2020.09.02 12:09:37
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 47.0
-- Increases Fervor of caster by 2.0
-- Adds 14.0% to base avoidance.
-- Increases Mitigation of caster vs physical damage by 292
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 379
-- When damaged with a melee weapon this spell has a 20% chance to cast Song Barrier on target's attacker.  
--     Inflicts 39 - 65 mental damage on target
-- When damaged with a spell this spell has a 20% chance to cast Song Barrier on target's attacker.  
--     Inflicts 39 - 65 mental damage on target

function cast(Caster, Target, Agi, Avoid, Phys, EleMit, DmgType, MinVal, MaxVal)
        Say(Caster, "Fervor not Implemented")

AddSpellBonus(Caster, 2, Agi)
    AddSpellBonus(Caster, 696, Avoid)
    AddSpellBonus(Caster, 200, Phys)
    AddSpellBonus(Caster, 201, EleMit)
    AddSpellBonus(Caster, 202, EleMit)
    AddSpellBonus(Caster, 203, EleMit)
	AddProc(Target, 16, 20)
	AddProc(Target, 17, 20)
end

function proc(Caster, Target, Agi, Avoid, Phys, EleMit, DmgType, MinVal, MaxVal)
	if Type == 1 then    
		ProcDamage(Caster, Target, "Song Barrier", DmgType, MinVal, MaxVal)
			end

	if Type == 7 then
		ProcDamage(Caster, Target, "Song Barrier", DmgType, MinVal, MaxVal)
			end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
	RemoveProc(Target)
end


