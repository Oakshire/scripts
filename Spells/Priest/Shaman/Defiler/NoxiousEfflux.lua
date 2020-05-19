--[[
    Script Name    : Spells/Priest/Shaman/Defiler/NoxiousEfflux.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 05:03:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Nox)
    -- Increases STA of group members (AE) by 3.0
    AddSpellBonus(Target, 1, BonusAmt)

    -- Increases Mitigation of group members (AE) vs noxious damage by 194
    AddSpellBonus(Target, 202, Nox)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
