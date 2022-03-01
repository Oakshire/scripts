--[[
    Script Name    : Spells/AA/VolatileMagic.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 07:12:57
    Script Purpose : 
                   : 
--]]

-- Increases Potency of caster by 15.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 659, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end