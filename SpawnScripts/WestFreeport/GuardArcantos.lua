--[[
    Script Name    : SpawnScripts/WestFreeport/GuardArcantos.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:29
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I have no idea why you were assigned this mission instead of me. You are the laziest person I know.", "boggle", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I think they have her guarding the entrance down into the sewers.", "", 0, 0, Spawn, 0)
	end
end