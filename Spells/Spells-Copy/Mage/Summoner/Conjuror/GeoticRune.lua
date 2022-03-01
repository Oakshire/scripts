--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/GeoticRune.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 05:03:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Defense, Resist)
    -- Increases Defense of group members' pets (AE) by 2.0
    -- AddSkillBonus(Target, GetSkillIDByName("Defense"), Defense)

    -- Increases Mitigation of group members (AE) vs all damage by 38
    AddSpellBonus(Target, 200, Resist)
    AddSpellBonus(Target, 201, Resist)
    AddSpellBonus(Target, 202, Resist)
    AddSpellBonus(Target, 203, Resist)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
