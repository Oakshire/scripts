--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/BobandWeave.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 05:03:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stat, Avoid, Resist)
    -- Increases STR of caster by 9.4
    AddSpellBonus(Target, 0, Stat)

    -- Adds 2.5% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Increases Mitigation of caster vs elemental, noxious and arcane damage by 168
    AddSpellBonus(Target, 201, Resist)
    AddSpellBonus(Target, 202, Resist)
    AddSpellBonus(Target, 203, Resist)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
