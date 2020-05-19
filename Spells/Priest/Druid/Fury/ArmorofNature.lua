--[[
    Script Name    : Spells/Priest/Druid/Fury/ArmorofNature.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 02:01:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HPBonus, ResistBonus)
    -- Increases Max Health of group members (AE) by 21.6
    --     If fighter
    AddSpellBonus(Target, 606, HPBonus, 11, 21, 31)

    -- Increases Mitigation of group members (AE) vs physical damage by 93
    --     If not fighter
    AddSpellBonus(Target, 200, ResistBonus, 1)
end
