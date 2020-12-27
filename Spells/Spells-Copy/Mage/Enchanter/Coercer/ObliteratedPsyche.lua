--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/ObliteratedPsyche.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Decreases Mitigation of target vs elemental, noxious and arcane damage by 180
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
