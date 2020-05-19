--[[
    Script Name    : Spells/Priest/Druid/Fury/MasteroftheHunt.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 04:01:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Increases STA of group members (AE) by 3.0
    AddSpellBonus(Target, 1, StatAmt)

    -- Increases Mitigation of group members (AE) vs elemental damage by 194
    AddSpellBonus(Target, 201, ResistAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
