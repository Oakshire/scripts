--[[
    Script Name    : Spells/Cleric/CureTrauma.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.01 06:12:40
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    CureByType(1, 1, "", (GetLevel(Caster) * 1.08) + 1)
end
