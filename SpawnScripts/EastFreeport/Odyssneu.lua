--[[
	Script Name	: SpawnScripts/EastFreeport/Odyssneu.lua
	Script Purpose	: Odyssneu <Broker>
	Script Author	: neatz09
	Script Date	: 2018.12.30
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/broker_aliindar/qey_harbor/031_con_merchant_aliindar_erudite_2_aoi_1fefa590.mp3", "Hello there!  Let's not waste any time shall we?  What is it I can get for you?", "beckon", 1746996390, 2674526000, Spawn)
end

