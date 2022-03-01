--[[
    Script Name    : Spells/AbilityAptitude.lua
    Script Author  : neatz09
    Script Date    : 2020.03.21 02:03:21
    Script Purpose : 
                   : 
--]]

-- Increases Ability Mod of caster by 10.4

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 707, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end