--[[
    Script Name    : Spells/Scout/Bard/Troubador/AlinsSereneSerenade.lua
    Script Author  : neatz09
    Script Date    : 2020.02.11 07:02:21
    Script Purpose : 
                   : 
--]]

-- Decreases Hate Gain of group members (AE) by 10.7%
--     If not fighter
-- When damaged this spell will cast Serenade on target's attacker.  
--     Decreases Threat to target by 22 
--     If not fighter

function cast(Caster, Target, HateGain, Decrease)
    Say(Caster, "Proc needs to be exempt from fighter")
	AddSpellBonus(Target, 624, HateGain, 11, 21 , 31)
	AddProc(Target, 15, 100, nil, 1)
end

function proc(Caster, Target, HateGain, Decrease)
	if Type == 15 then    
		ProcHate(Caster, Target, Hate, "Serenade")
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
end