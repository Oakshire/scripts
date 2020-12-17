--[[
    Script Name    : Spells/Traits/DarkenedAgility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:36
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end