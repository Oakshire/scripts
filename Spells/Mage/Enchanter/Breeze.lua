--[[
    Script Name    : Spells/Mage/Enchanter/Breeze.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 11:11:58
    Script Purpose : 
                   : 
--]]

-- Increases Combat Power Regen of group members (AE) by 5.6

function cast(Caster, Target, Pwr)
    AddSpellBonus(Target, 605, Pwr)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end