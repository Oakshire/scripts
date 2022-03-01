--[[
    Script Name    : Spells/AA/SentrysBulwark.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:40
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end