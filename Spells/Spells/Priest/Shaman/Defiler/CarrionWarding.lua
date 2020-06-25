--[[
    Script Name    : Spells/Priest/Shaman/Defiler/CarrionWarding.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 05:03:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Ward)
    -- Wards group members (AE) collectively against 327 total points of all damage
    AddWard(Ward)
end

function remove(Caster, Target)
    RemoveWard(Ward)
end