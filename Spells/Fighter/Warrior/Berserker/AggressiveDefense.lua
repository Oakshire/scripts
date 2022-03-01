--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/AggressiveDefense.lua
    Script Author  : neatz09
    Script Date    : 2020.09.02 11:09:25
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 46
-- When damaged with a melee weapon this spell has a 20% chance to cast Provoking Counterattack on target's attacker.  
--     Increases Threat to target by 20 
--     Inflicts 3 - 6 slashing damage on target
-- On a block this spell will cast Provoking Counterattack on target's victim.  
--     Increases Threat to target by 20 

function cast(Caster, Target, Mit, Hate, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
	AddProc(Target, 16, 20)
	AddProc(Target, 7, 20)
end

function proc(Caster, Target, Type, Mit, Hate, DmgType, MinVal, MaxVal)
	if Type == 16 then    
		ProcHate(Caster, Target, Hate, "Provoking Counterattack")
		ProcDamage(Caster, Target, "Provoking Counterattack", DmgType, DmgMin, DmgType)	
end

	if Type == 7 then
		ProcHate(Caster, Target, Hate, "Provoking Counterattack")
end

end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
	RemoveProc(Target)
end