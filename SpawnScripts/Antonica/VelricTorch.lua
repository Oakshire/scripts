--[[
    Script Name    : SpawnScripts/Antonica/VelricTorch.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.07 05:10:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "Despite the good in and around these lands, you still end up with places like this dark forest. Did you ever wonder why that is?", "ponder", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "It's nice to see others out and about. My wife is such a homebody.", "hello", 0, 0, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "A great day for a picnic, wouldn't you say?", "agree", 0, 0, Spawn, 0)
	end
end