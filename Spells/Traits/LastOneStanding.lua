--[[
    Script Name    : Spells/Traits/LastOneStanding.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:54
    Script Purpose : 
                   : 
--]]

-- Increases STA of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 1, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end