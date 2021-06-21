--[[
    Script Name    : Spells/Commoner/HateBlossom.lua
    Script Author  : neatz09
    Script Date    : 2021.06.20 10:06:58
    Script Purpose : 
                   : 
--]]


--*Decreases AGI, INT, STA, STR and WIS of target by 5.0.

function cast(Caster, Target, Amt)
    AddSpellBonus(Target, 0, Amt)
    AddSpellBonus(Target, 1, Amt)
    AddSpellBonus(Target, 2, Amt)
    AddSpellBonus(Target, 3, Amt)
    AddSpellBonus(Target, 4, Amt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end