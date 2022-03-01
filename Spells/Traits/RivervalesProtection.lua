--[[
    Script Name    : Spells/Traits/RivervalesProtection.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:30
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