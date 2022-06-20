--[[
    Script Name    : SpawnScripts/NorthFreeport/JulesJumsinger.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:54
    Script Purpose : 
                   : 
--]]


function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "I can handle all your banking needs, big or small.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "What are you looking at, tallstuff?  Never seen a halfling in Freeport before?", "", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "Get on with your business or watch out for your ankles is all I'll say.", "", 0, 0, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1005.mp3", "This is the North Freeport branch of the Freeport Reserve, what's your business?", "", 0, 0, Spawn, 0)
end
end