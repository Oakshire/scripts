--[[
    Script Name    : Spells/Fighter/Toughness.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.09 08:12:36
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 200, BonusAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

