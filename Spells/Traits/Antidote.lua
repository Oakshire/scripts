--[[
    Script Name    : Spells/Traits/Antidote.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 05:12:12
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs noxious damage by 3

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 202, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end