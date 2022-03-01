--[[
    Script Name    : Spells/Traits/DevoutBarrier.lua
    Script Author  : neatz09
    Script Date    : 2020.12.20 12:12:12
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs arcane damage by 3

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end