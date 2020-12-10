--[[
    Script Name    : Spells/AA/SwiftJourney.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:54
    Script Purpose : 
                   : 
--]]

-- Increases Mount Speed of caster by 2.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 611, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end