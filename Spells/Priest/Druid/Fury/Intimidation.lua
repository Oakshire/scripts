--[[
    Script Name    : Spells/Priest/Druid/Fury/Intimidation.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 03:01:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Decreases WIS and AGI of target by 6.4
    AddSpellBonus(Target, 3, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
