--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Deteriorate.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 06:12:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Decreases STR and AGI of target by 8.0
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end