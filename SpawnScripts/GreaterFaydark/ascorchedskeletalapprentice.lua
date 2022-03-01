--[[
	Script Name	: SpawnScripts/GreaterFaydark/ascorchedskeletalapprentice.lua
	Script Purpose	: a scorched skeletal apprentice 
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

	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/skeleton_greater_faydark_spires_1/ft/_exp03/skeleton/skeleton_greater_faydark_spires_1_aggro_c9c1b5c3.mp3", "The fires of the ether are under my control.", "", 3718978052, 2123849989, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/skeleton_greater_faydark_spires_1/ft/_exp03/skeleton/skeleton_greater_faydark_spires_1_death_82c44f30.mp3", "I will return.", "", 1809370740, 654770967, Spawn)
	else
	end

end

