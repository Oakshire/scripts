--[[
    Script Name    : ItemScripts/FrenzyRoot.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.21 01:03:05
    Script Purpose : 
                   : 
--]]


           
function used(Item, Player)
    local zone = GetZone(Player)
	local X = GetX(Player)
	local Y = GetY(Player)
	local Z = GetZ(Player)
    local FrenzyRoot = SpawnMob(zone, 330938, false, X, Y, Z, 50)
    if FrenzyRoot ~= nil then
        AddSpawnAccess(FrenzyRoot, Player)
    end
end