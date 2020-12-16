--[[
    Script Name    : Spells/AA/QuickTactics.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 12:12:01
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 2.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end