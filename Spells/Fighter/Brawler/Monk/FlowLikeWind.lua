--[[
    Script Name    : Spells/Fighter/Brawler/Monk/FlowLikeWind.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.12 05:01:24
    Script Purpose : 
                   : 
--]]
--last tier has 1.4% potency
function cast(Caster, Target, BonusAmt, DefSkills, SkillAmt)
    -- Increases Attack Speed of caster by 10.9
    AddSpellBonus(Target, 617, BonusAmt)

    -- Decreases Defense of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)

    -- Increases Ranged, Crushing, Piercing and Slashing of caster by 2.4
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSpellBonus(Target, 659, 20) --potency gain?

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
