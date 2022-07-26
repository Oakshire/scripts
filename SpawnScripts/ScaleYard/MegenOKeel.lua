--[[
	Script Name		: SpawnScripts/ScaleYard/MegenOKeel.lua
	Script Purpose	: Megen O`Keel
	Script Author	: torsten
	Script Date		: 2022.07.25
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
		PlayFlavor(NPC, "", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 0, 0, Spawn, 0)
	end
end