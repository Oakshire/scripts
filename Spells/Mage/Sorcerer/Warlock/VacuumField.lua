--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/VacuumField.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 05:01:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Decreases Mitigation of target encounter vs noxious damage by 69
    AddSpellBonus(Target, 202, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end