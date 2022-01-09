--[[
	Script Name	: SpawnScripts/TheBaubbleshire/KaldinDeeppockets.lua
	Script Purpose	: Kaldin Deeppockets <General Goods>
	Script Author	: Dorbin
	Script Date	: 2022.01.09
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

	local choice = math.random(1,4)

	if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	--	PlayFlavor(NPC, "", "Might I interest you in some meat and cheese to go with that tall glass of ale?", "shrug", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "My name is Deeppockets.  Pleased to meet you, I am!  Perhaps we'll talk again some day!", "", 3221951518, 4136363260, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
		--PlayFlavor(NPC, "", "The best part about this job is all the extra coin I get.", "wink", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "Come over and meet one of the most famous brewmasters in Qeynos!", "", 2446853968, 3962612908, Spawn)
	else
	end

end

