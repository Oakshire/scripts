--[[
	Script Name	: SpawnScripts/ElddarGrove/ElendiaStarleaf.lua
	Script Purpose	: Elendia Starleaf <Ranger Trainer>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Hello there, you seek woodlore do you?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", "", "", 0, 0, Spawn)
	else
	end

end

