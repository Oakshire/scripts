--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/FanaticsFaith.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 09:03:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Arcane)
    -- Increases STA of group members (AE) by 3.0
    AddSpellBonus(Target, 1, Sta)

    -- Increases Mitigation of group members (AE) vs arcane damage by 194
    AddSpellBonus(Target, 203, Arcane)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

