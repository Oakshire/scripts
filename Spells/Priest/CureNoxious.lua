--[[
    Script Name    : Spells/Priest/CureNoxious.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 08:10:24
    Script Purpose : 
                   : 
--]]

-- Dispels 10 levels of noxious hostile effects on target

function cast(Caster, Target, Amt)
    CureByType(1, 3, "Cure", Amt)
end