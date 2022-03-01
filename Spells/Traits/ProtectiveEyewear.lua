--[[
    Script Name    : Spells/Traits/ProtectiveEyewear.lua
    Script Author  : neatz09
    Script Date    : 2020.12.20 01:12:15
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs elemental damage by 3

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 201, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end