--[[
	Script Name	: SpawnScripts/OutpostOverlord/ZitoGraban.lua
	Script Purpose	: Zito Graban 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "You've got to be deviant to survive in Freeport.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1032.mp3", "I plan on joining a guild when I leave the outpost.", "", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "I've almost completed my shell collection to turn in to Gethe Huggs.", "", 1689589577, 4560189, Spawn)
	end

end

