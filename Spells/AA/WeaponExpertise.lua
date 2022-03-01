--[[
    Script Name    : Spells/AA/WeaponExpertise.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:59
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 2.2

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end