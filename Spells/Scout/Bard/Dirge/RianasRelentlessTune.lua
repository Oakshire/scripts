--[[
    Script Name    : Spells/Scout/Bard/Dirge/RianasRelentlessTune.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MultiAmt)
-- Increases Multi Attack Chance of group members (AE) by 9.0

    AddSpellBonus(Target, 641, MultiAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
