--[[
    Script Name    : Spells/Scout/Predator/BladeFlurry.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 01:11:37
    Script Purpose : 
                   : 
--]]

-- Decreases Defense of caster by 5.1
-- Increases Slashing, Piercing, Ranged and Crushing of caster by 6.9
-- On a melee hit this spell may cast Swipe on target of attack.  Triggers about 2.0 times per minute. 
--     Inflicts 35 - 58 melee damage on target

function cast(Caster, Target, Def, OffSkillz, DmgType, MinVal, MaxVal, Chance)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillz)
	AddProc(Target, 3, Chance)
end

function proc(Caster, Target, Type, Def, OffSkillz, DmgType, MinVal, MaxVal, Chance)
	if Type == 3 then
		ProcDamage(Caster, Target, "Swipe", DmgType, MinVal, MaxVal)
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
    RemoveSkillBonus(Target)
end