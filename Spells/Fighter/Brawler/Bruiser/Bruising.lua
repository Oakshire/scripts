--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Bruising.lua
    Script Author  : neatz09
    Script Date    : 2020.01.24 11:01:59
    Script Purpose : 
                   : 
--]]

-- Caster will deflect 4.5% of incoming attacks.
-- Increases Parry of caster by 5.9
-- Increases Deflection, Slashing, Piercing, Crushing and Ranged of caster by 5.9
-- Increases Mitigation of caster vs noxious damage by 396
-- Increases the caster's effectiveness of worn armor vs physical damage by 13%
-- On a melee hit this spell may cast Engulf on target of attack.  Triggers about 1.0 times per minute. 
--     Inflicts 155 - 258 heat damage on target

function cast(Caster, Target, Deflect, Parry, Skills, Nox, Armor, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 3)    
	AddSpellBonus(Target, 670, Deflect)
	AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Skills)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Skills)
    AddSpellBonus(Target, 202, Nox)
    AddSpellBonus(Target, 678, Armor)
end

function proc(Caster, Target, Type, Deflect, Parry, Skills, Nox, Armor, DmgType, MinVal, MaxVal)
	if Type == 3 then 
ProcDamage(Caster, Target, "Engulf", DmgType, MinVal, MaxVal)
end
end

function remove(Caster, Target)
	RemoveProc(Target)
	RemoveSpellBonus(Target)
	RemoveSkillBonus(Target)
end