--[[
    Script Name    : Spells/AA/SwiftStrides.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:30
    Script Purpose : 
                   : 
--]]

-- Increases speed of caster by 1.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 609, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end