--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/AbandonedFury.lua
    Script Author  : neatz09
    Script Date    : 2019.10.29 11:10:17
    Script Purpose : 
                   : 
--]]

-- Decreases Defense of caster by 1.8
-- Increases Slashing, Piercing and Crushing of caster by 2.4
-- The caster may not benefit from any stoneskin, death prevent, or 100% avoidance abilities while under this effect and for 5 seconds after the effect has been removed.
-- Increases the amount of Potency gained by 20%
-- On a melee hit this spell may cast Furious Assault on target of attack.  Triggers about 2.0 times per minute. 
--     Inflicts 5 - 9 melee damage on target encounter

function cast(Caster, Target, Def, OffSkills, DmgType, MinVal, MaxVal)
    Say(Caster, "ProcDamage needs an override to hit encounter")
	Say(Caster, "Fervor and stoneskin/death/avoid component not implemented.")
	AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
	AddProc(Target, 3, 10)
end

function proc(Caster, Target, Type, Def, Offskills, DmgType, MinVal, MaxVal)
	if Type == 3 then
	ProcDamage(Caster, Target, "Furious Assault", DmgType, DmgMin, DmgType)	
end

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
	RemoveProc(Target)
end