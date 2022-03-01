--[[
    Script Name    : Spells/Scout/Bard/MercilessMelody.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 05:11:30
    Script Purpose : 
                   : 
--]]

-- Increases Haste of group members (AE) by 7.8

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 617, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end