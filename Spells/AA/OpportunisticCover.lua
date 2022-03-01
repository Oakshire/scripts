--[[
    Script Name    : Spells/AA/OpportunisticCover.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:41
    Script Purpose : 
                   : 
--]]

-- Increases Multi Attack of caster by 2.5

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 641, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end