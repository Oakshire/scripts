--[[
    Script Name    : Spells/KineticistsIntelligence.lua
    Script Author  : Ememjr
    Script Date    : 2019.04.21 06:04:05
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases INT and STA of caster by 4.0
   
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 1, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)
end



