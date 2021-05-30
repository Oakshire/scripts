--[[
    Script Name    : Spells/CatalogueCreature.lua
    Script Author  : neatz09
    Script Date    : 2021.05.29 09:05:48
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    Name = GetName(Target)
    SendMessage(Caster, "Currently targeting " .. Name .. "...", "white")
end