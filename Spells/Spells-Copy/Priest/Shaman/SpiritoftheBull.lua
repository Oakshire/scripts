--[[
    Script Name    : Spells/Priest/Shaman/SpiritoftheBull.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:56
    Script Purpose : 
                   : 
--]]

-- Increases STR and STA of group members (AE) by 13.1

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 600, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end



