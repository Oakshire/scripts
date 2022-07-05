--[[
	Script Name	: SpawnScripts/Starcrest/GracenDocks.lua
	Script Purpose	: Gracen Docks 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "You should watch the sky at night sometime, it sure does get pretty.", "nod", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "Sometimes fate leaves you guessing, but never forget that the point is buried in there somewhere.", "ponder", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "You know what I miss? I miss when really big moustaches were in style.", "agree", 0, 0, Spawn, 0)
	
	end

end