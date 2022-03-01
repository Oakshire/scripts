--[[
    Script Name    : Spells/SeasonedVeteran.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:55
    Script Purpose : 
                   : 
--]]

-- Increases Multi Attack of caster by 2.4

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 641, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end