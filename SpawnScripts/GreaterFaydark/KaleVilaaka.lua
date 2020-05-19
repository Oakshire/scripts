--[[
	Script Name	: SpawnScripts/GreaterFaydark/KaleVilaaka.lua
	Script Purpose	: Kale Vilaaka <Provisioner>
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

	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Go ahead and use my test kitchen, so long as you clean up after yourself.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Mmm, mmm! Doesn't this smell like something that'll be good to eat?", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1039.mp3", "", "", 0, 0, Spawn)
	else
	end

end

