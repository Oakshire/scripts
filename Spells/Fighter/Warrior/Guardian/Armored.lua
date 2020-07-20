--[[
	Script Name	: Armored
	Script Purpose	: Guardian Defensive Stance script
	Script Author	: Zcoretri - rewriten by neatz09 10-29-19
	Script Date	: 2010.01.26
	Script Note	: 
--]]

function cast(Caster, Target, Physical, Avoidance, SkillAmt, Aggro, Defense, MitNox, MitElem, Armor)
    Say(Caster, "physical reduction looks wrong")

    AddSpellBonus(Caster, 200, Physical)        -- physical
    AddSpellBonus(Caster, 696, Avoidance)       -- avoidance
    AddSpellBonus(Caster, 202, MitNox)          -- mitigation against noxious
    AddSpellBonus(Caster, 203, MitNox)          -- mitigation against arcane
    AddSpellBonus(Caster, 201, MitElem)         -- mitigation against elemental

AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
AddSkillBonus(Target, GetSkillIDByName("Aggression"), Aggro)
AddSkillBonus(Target, GetSkillIDByName("Defense"), Defense)
AddSkillBonus(Target, GetSkillIDByName("Parry"), Defense)


-- Increases the caster's effectiveness of worn armor vs physical damage by 25%
    AddSpellBonus(Target, 678, Armor)

end


function remove(Caster, Target)
    RemoveSkillBonus(Caster)
    RemoveSpellBonus(Caster)
end