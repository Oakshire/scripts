--[[
    Script Name    : SpawnScripts/ThunderingSteppes/Tarnael.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 03:06:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "I'm making money hand over fist over here!", "scheme", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "For you, a special price!", "scheme", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "I was sent here by Queen Bayle herself!  Yeah!  The Queen!", "nod", 0, 0, Spawn, 0)
end
end
		
function respawn(NPC)
	spawn(NPC)
end