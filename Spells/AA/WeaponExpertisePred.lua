--[[
    Script Name    : Spells/AA/WeaponExpertisePred.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 06:12:53
    Script Purpose : 
                   : 
--]]

-- Increases Potency of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 659, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end