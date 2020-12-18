--[[
    Script Name    : Spells/Traits/IntelligentDesigns.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:46
    Script Purpose : 
                   : 
--]]

-- Increases INT of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 4, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end