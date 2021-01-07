--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Shenanigans.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 11:10:30
    Script Purpose : 
                   : 
--]]

-- Increases threat priority of target by 2 positions
-- Decreases Defense and Parry of caster by 459.0
-- Stuns caster
-- When damaged with a melee weapon this spell will cast Surprise Attack on target's attacker.  
--     Inflicts 1577 - 2628 piercing damage on target
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, SkillAmt, DmgType, MinVal, MaxVal, Triggers)
    Say(Caster, "Threat Position not implemented.")
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
    AddControlEffect(Target, 4)
	AddProc(Target, 15, 100)
end

function proc(Caster, Target, Type, SkillAmt, DmgType, MinVal, MaxVal, Triggers)
	if Type == 15 then
	ProcDamage(Caster, Target, "Suprise Attack", DmgType, MinVal, MaxVal)
end

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveControlEffect(Target, 4)
	RemoveProc(Target)
end