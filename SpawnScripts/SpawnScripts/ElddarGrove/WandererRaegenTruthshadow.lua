--[[
	Script Name	: SpawnScripts/ElddarGrove/WandererRaegenTruthshadow.lua
	Script Purpose	: Wanderer Raegen Truthshadow <Tunarian Alliance Grove Warden>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Keep your eyes on the horizon, my friend.  Only through vigilance and defense can we keep Qeynos safe.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1021.mp3", "", "", 0, 0, Spawn)
	else
	end

end

