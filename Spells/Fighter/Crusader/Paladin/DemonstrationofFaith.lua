--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/DemonstrationofFaith.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 06:12:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, WardAmt)
    -- Wards target against 179 points of all damage
    AddWard(WardAmt)
end

function remove(Caster, Target)
    RemoveWard()
end