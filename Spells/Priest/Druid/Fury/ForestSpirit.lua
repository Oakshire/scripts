--[[
    Script Name    : Spells/Priest/Druid/Fury/ForestSpirit.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 04:01:25
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stat, Resist)
    -- Increases INT and WIS of group members (AE) by 13.1
    AddSpellBonus(Target, 4, Stat)
    AddSpellBonus(Target, 3, Stat)

    -- Increases Mitigation of group members (AE) vs elemental, noxious and arcane damage by 86
    AddSpellBonus(Target, 201, Resist)
    AddSpellBonus(Target, 202, Resist)
    AddSpellBonus(Target, 203, Resist)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
