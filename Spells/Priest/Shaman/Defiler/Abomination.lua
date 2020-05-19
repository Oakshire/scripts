--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Abomination.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 04:03:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt, Health)
    -- Decreases STR, AGI, WIS and INT of target by 2.7
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
    AddSpellBonus(Target, 3, BonusAmt)
    AddSpellBonus(Target, 4, BonusAmt)

    -- Decreases Max Health of target by 0.5%
    AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
