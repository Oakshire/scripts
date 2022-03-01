--[[
    Script Name    : Spells/AA/BattlemageArmor.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:31
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs physical damage by 150

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end