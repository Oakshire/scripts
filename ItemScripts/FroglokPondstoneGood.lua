--[[
    Script Name    : ItemScripts/FroglokPondstoneEvil.lua
    Script Author  : neatz09
    Script Date    : 2023.04.22 09:04:22
    Script Purpose : handles item id#46436
                   : 
--]]

function examined(Item, Player)

end

function used(Item, Player)
    local Cube = 121856
    local Spawn2 = GetSpawn(Player, Cube)
    if Spawn2 == nil then SendMessage(Player, "You must seek an ancient pond to use this item.", "Yellow") else
    local Distance = GetDistance(Player, Spawn2)
    if Distance > 78 then SendMessage(Player, "You must seek an ancient pond to use this item.", "Yellow")
    else CastSpell(Player, 2550399, 1)
        end
    end
end