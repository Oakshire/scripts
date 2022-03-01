--[[
    Script Name    : Spells/AA/SwiftWings.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:15
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
