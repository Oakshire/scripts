--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Breeze.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Increases In-Combat Power Regeneration of group members (AE) by 5.6
    AddSpellBonus(Target, 605, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
