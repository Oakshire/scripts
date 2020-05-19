--[[
	Script Name	: SpawnScripts/GreaterFaydark/AltanBrownwing.lua
	Script Purpose	: Altan Brownwing <Provisioner>
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

	choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "", "There's nothing like a bowl of homemade vegetable stew!", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Go ahead and use my test kitchen, so long as you clean up after yourself.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Mmm, mmm! Doesn't this smell like something that'll be good to eat?", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
	else
	end

end

