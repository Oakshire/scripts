--[[
    Script Name    : Spells/AA/Coagulate.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:18
    Script Purpose : 
                   : 
--]]

-- Increases Unconscious Health of group members (AE) by 16.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 661, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end