--[[
	Script Name	: SpawnScripts/Stormhold/ArchaeologistElurad.lua
	Script Purpose	: Archaeologist Elurad 
	Script Author	: TyroneSWG
	Script Date	: 2020.06.12
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

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/archaeologist_elurad/befallen/quest/010_archaeologist_elurad_notcompletedquest_71f32dc8.mp3", "Hail adventurer!  You wouldn't happen to be interested in fortune and glory, would you?", "hello", 801293320, 145198187, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/archaeologist_elurad/befallen/quest/010_archaeologist_elurad_completedquest_60e979f5.mp3", "Well, have you retrieved the items yet?", "peer", 3772633495, 1778716381, Spawn)
	else
	end

end
