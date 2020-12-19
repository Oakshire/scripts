--[[
    Script Name    : Spells/Traits/WisdomofRivervale.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:23
    Script Purpose : 
                   : 
--]]

-- Increases WIS of caster by 2.5

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 3, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end