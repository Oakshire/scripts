--[[
	Script Name	: SpawnScripts/ElddarGrove/GregorEarthstride.lua
	Script Purpose	: Gregor Earthstride 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I can't ever seem to find the arrows I need! Nightbow's shop here is good, but it's a bit pricey.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
	else
	end

end

