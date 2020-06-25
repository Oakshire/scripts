--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Brutality.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 10:03:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stats, Avoid, Taunts, Spells, CombatArts)
    -- Increases AGI and STR of raid and group members (AE) by 5.4
    AddSpellBonus(Target, 2, Stats)
    AddSpellBonus(Target, 0, Stats)

    -- Adds 0.9% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Improves the base amount of taunts by 9%.
    AddSpellBonus(Target, 705, Taunts)

    --Improves the base amount of spells by 0.85%.
    AddSpellBonus(Target, 700, BonusAmt)

    -- Improves the base amount of combat arts by 2.81%.
    AddSpellBonus(Target, 703, CombatArts)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end