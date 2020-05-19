--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Velocity.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Increases Multi Attack Chance of target by 26.5
    AddSpellBonus(Target, 641, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
