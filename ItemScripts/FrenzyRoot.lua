--[[
    Script Name    : ItemScripts/FrenzyRoot.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.21 01:03:05
    Script Purpose : 
                   : 
--]]


           
function used(Item, Spawn)
         local zone = GetZone(Spawn)
	     local X = GetX(Spawn)
	     local Y = GetY(Spawn)
	     local Z = GetZ(Spawn)
        local FrenzyRoot = SpawnMob(zone, 331123, false, X, Y, Z, 50)
        if FrenzyRoot ~= nil then
        AddSpawnAccess(FrenzyRoot, Spawn)
        RemoveItem(Spawn, 46427)           
        end
           end