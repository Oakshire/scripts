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
        SpawnMob(zone, 331123, true, X, Y, Z)
        RemoveItem(Player, 46427)
		end