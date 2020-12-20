--[[
    Script Name    : Spells/Traits/OggokianStubbornness.lua
    Script Author  : neatz09
    Script Date    : 2020.12.20 01:12:05
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs arcane damage by 3

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end