--[[
	Script Name	: SpawnScripts/GreaterFaydark/DarukGraniteNoseDobbson.lua
	Script Purpose	: Daruk Granite Nose Dobbson 
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/daruk_granite_nose_dobbson/_exp03/exp03_rgn_greater_faydark/quest/scp/part_three/daruk_notonquest_f4793c32.mp3", "Don't bother me, I'm planning!", "", 400726950, 222322887, Spawn)
end

