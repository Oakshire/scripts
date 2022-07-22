--[[
    Script Name    : SpawnScripts/WailingCaves/07spiketrap.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.23 12:04:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	--AddTransportSpawn(NPC)
	AddTimer(NPC, 500, "Open")
end

function respawn(NPC)
	spawn(NPC)
end

function Open(NPC)
	OpenDoor(NPC)
	AddTimer(NPC, 15000, "Open")
end
