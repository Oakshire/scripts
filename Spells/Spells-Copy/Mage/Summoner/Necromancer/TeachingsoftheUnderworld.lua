--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/TeachingsoftheUnderworld.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.08 12:12:12
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases STA and INT of group members (AE) by 9.4

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 1, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
