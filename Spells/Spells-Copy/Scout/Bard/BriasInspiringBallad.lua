--[[
    Script Name    : Spells/Scout/Bard/BriasInspiringBallad.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08 09:08:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, RegenAmt)
-- Increases In-Combat Power Regeneration of group members (AE) by 3.8

    AddSpellBonus(Target, 601, RegenAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

