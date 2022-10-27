--[[
    Script Name    : SpawnScripts/WestFreeport/BarberRazorburn.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:47
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1058.mp3", "Snippy snippy!  Clippy Clippy!", "applaude", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1058.mp3", "Where meez clipclips goez?", "peer", 0, 0, Spawn, 0)
	end
end