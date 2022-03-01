--[[
    Script Name    : Spells/AA/AvengingHatred.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:37
    Script Purpose : 
                   : 
--]]

-- Increases Ability Recovery Speed of caster by 7.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 663, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end