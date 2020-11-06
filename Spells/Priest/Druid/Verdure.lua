--[[
    Script Name    : Spells/Priest/Druid/Verdure.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 05:01:10
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of group members (AE) by 30.4
-- Increases Mitigation of group members (AE) vs elemental damage by 156

function cast(Caster, Target, HP, Mit)
    AddSpellBonus(Target, 606, HP)
    AddSpellBonus(Target, 201, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end