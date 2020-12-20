--[[
    Script Name    : Spells/Traits/ElementalDurability.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 05:12:55
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs elemental damage by 3

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 201, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end