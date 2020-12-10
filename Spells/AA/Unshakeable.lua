--[[
    Script Name    : Spells/AA/Unshakeable.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:14
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs physical damage by 56

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end