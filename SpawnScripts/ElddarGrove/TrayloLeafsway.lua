--[[
	Script Name	: SpawnScripts/ElddarGrove/TrayloLeafsway.lua
	Script Purpose	: Traylo Leafsway <Gildas' Assistant>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Greetings citizen.  Please see me if you have any armor from Gildas that you wish to be rid of, I have some newer armor that may interest you. ", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1012.mp3", "", "", 0, 0, Spawn)
	else
	end

end

