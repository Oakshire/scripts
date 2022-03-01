--[[
    Script Name    : Spells/Traits/FaydarkChampionsAgility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:34
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end