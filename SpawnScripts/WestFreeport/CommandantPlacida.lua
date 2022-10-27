--[[
    Script Name    : SpawnScripts/WestFreeport/CommandantPlacida.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:49
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
		PlayFlavor(NPC, "", "Care to test out why I'm in the Miltia!", "brandish", 0, 0, Spawn, 0)
	end
end