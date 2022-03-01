--[[
    Script Name    : Spells/Mage/Sorcerer/VividSeal.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:16
    Script Purpose : 
                   : 
--]]

-- Increases STR and INT of group members (AE) by 9.4

function cast(Caster, Target, Buff)
    AddSpellBonus(Target, 0, Buff)
    AddSpellBonus(Target, 4, Buff)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end