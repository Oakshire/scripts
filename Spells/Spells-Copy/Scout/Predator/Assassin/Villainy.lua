--[[
    Script Name    : Spells/Scout/Predator/Assassin/Villainy.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, Avoid, Multi, PhyMit, SpellMit)
    -- Increases AGI of caster by 8.7
    AddSpellBonus(Target, 2, Agi)

    -- Adds 14.0% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Increases Multi Attack Chance of caster by 19.0
    AddSpellBonus(Target, 641, Multi)

    -- Increases Mitigation of caster vs physical damage by 69
    AddSpellBonus(Target, 200, PhyMit)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 154
    AddSpellBonus(Target, 201, SpellMit)
    AddSpellBonus(Target, 202, SpellMit)
    AddSpellBonus(Target, 203, SpellMit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
