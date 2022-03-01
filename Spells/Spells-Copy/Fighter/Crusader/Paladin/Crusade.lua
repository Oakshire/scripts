--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Crusade.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 06:12:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, statBonus, mitBonus, healBonus)
    -- Increases WIS of raid and group members (AE) by 9.2
    AddSpellBonus(Target, 3, statBonus)

    -- Increases Mitigation of raid and group members (AE) vs elemental, noxious and arcane damage by 78
    AddSpellBonus(Target, 201, mitBonus)
    AddSpellBonus(Target, 202, mitBonus)
    AddSpellBonus(Target, 203, mitBonus)

    -- Increases heal amounts of raid members by 2.82%.
    AddSpellBonus(Target, 701, healBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
