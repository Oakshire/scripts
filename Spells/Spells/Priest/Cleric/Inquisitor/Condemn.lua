--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Condemn.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 08:03:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    -- Decreases Mitigation of target vs all damage by 23
    AddSpellBonus(Target, 200, BonusAmt)
    AddSpellBonus(Target, 201, BonusAmt)
    AddSpellBonus(Target, 202, BonusAmt)
    AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
