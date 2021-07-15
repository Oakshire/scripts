--[[
    Script Name    : SpawnScripts/WailingCaves/07spiketrap.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.23 12:04:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTransportSpawn(NPC)
	AddTimer(NPC, 5000, "UseLift")
end

function respawn(NPC)
	spawn(NPC)
end

function UseLift(NPC)
	UseWidget(NPC)
	--AddTimer(NPC, 5000, "UseLift")
end
