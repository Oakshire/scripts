--[[
    Script Name    : SpawnScripts/QeynosHarbor/TheyeurnFarael.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:29
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
		PlayFlavor(NPC, "", "They were unquestionably Sarnak... Perhaps the humans cannot remember far enough back to know for sure, but we certainly can.", "", 0, 0, Spawn, 0)
	end
end