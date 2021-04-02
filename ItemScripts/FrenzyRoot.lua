--[[
    Script Name    : ItemScripts/FrenzyRoot.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.21 01:03:05
    Script Purpose : 
                   : 
--]]


           
function used(Item, Player)
    SendMessage(Player, "You have used an item", "yellow")
    local zone = GetZone(Player)
	local X = GetX(Player)
	local Y = GetY(Player)
	local Z = GetZ(Player)
    local FrenzyRoot = SpawnMob(zone, 331123, false, X, Y, Z, 50)
    if FrenzyRoot ~= nil then
        AddSpawnAccess(FrenzyRoot, Player)
        RemoveItem(Player, 46427)
    
    end
end