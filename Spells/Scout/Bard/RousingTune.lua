--[[
    Script Name    : Spells/Scout/Bard/RousingTune.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 05:11:43
    Script Purpose : 
                   : 
--]]

-- Increases STR and AGI of group members (AE) by 8.1

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end