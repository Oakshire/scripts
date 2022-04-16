--[[
    Script Name    : SpawnScripts/QeynosHarbor/ThomMcCorn.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:46
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,1)

	if choice == 1 then
		PlayFlavor(NPC, "", "You are my dearest love... but you wouldn't know a Sarnak from a Spiroc if it hit you in the face.", "", 0, 0, Spawn, 0)
	end
end