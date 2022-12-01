--[[
    Script Name    : Spells/Priest/CureNoxious.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 08:10:24
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, Amt)
        CureByType(1, 3, "", (GetLevel(Caster) * 1.08) + 1)
end