--[[
    Script Name    : Spells/Traits/ShieldofNature.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:25
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs noxious damage by 0

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 202, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end