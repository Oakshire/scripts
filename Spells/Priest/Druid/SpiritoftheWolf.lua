--[[
    Script Name    : Spells/Priest/Druid/SpiritoftheWolf.lua
    Script Author  : theFoof
    Script Date    : 2013.12.16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BuffAmt)
-- Increases speed of group members (AE) by 20.0%
-- This effect suspends during combat

    AddSpellBonus(Target, 609, BuffAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

