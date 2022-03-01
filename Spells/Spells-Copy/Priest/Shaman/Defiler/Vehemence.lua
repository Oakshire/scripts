--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Vehemence.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 05:03:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Str)
    -- Increases STA of group members (AE) by 6.9
    AddSpellBonus(Target, 1, Sta)

    -- Increases STR of group members (AE) by 13.1
    AddSpellBonus(Target, 0, Str)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
