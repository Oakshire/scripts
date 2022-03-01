--[[
    Script Name    : Spells/Fighter/Brawler/StanceBrawlersStance.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 05:11:14
    Script Purpose : 
                   : 
--]]

-- Decreases Slashing, Piercing and Crushing of caster by 4.8
-- Increases Defense and Deflection of caster by 4.3
-- Increases the caster's effectiveness of worn armor vs physical damage by 10%

function cast(Caster, Target, OffSkillz, Def, Armor)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
	AddSkillBonus(Target, GetSkillIDByName("Deflection"), Def)
    AddSpellBonus(Target, 678, Armor)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end