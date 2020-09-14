--[[
    Script Name    : Spells/Priest/Druid/Warden/WardenoftheForest.lua
    Script Author  : theFoof
    Script Date    : 2014.1.14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Focus, PhysMit, Resists)
-- Shapechanges caster into a wolf
-- Grants See Invisibility to caster  ***not yet scripted***
-- Increases Focus of caster by 8.1
-- Increases Mitigation of caster vs physical damage by 90
-- Increases Mitigation of caster vs elemental, noxious and arcane damage by 342
SetSeeInvis(Target,1)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), Focus)
    AddSpellBonus(Target, 200, PhysMit)
    AddSpellBonus(Target, 201, Resists)
    AddSpellBonus(Target, 202, Resists)
    AddSpellBonus(Target, 203, Resists)
    SetIllusion(Target, 216)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    ResetIllusion(Target)
SetSeeInvis(Target,0)
end

