--[[
    Script Name    : Spells/AA/StrongHearted.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:39
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 1.2%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
