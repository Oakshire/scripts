--[[
	Script Name		: SpawnScripts/BeggarsCourt/MolinDriftwater.lua
	Script Purpose	: Molin Driftwater
	Script Author	: torsten
	Script Date		: 2022.07.18
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 0, 0, Spawn, 0)
	end
end