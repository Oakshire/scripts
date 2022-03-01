--[[
    Script Name    : Spells/Priest/Shaman/Defiler/AncientShroud.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 04:03:34
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Ward)
    -- Wards target against 155 points of all damage
    AddWard(Ward)
end

function remove(Caster, Target)
    RemoveWard()
end
