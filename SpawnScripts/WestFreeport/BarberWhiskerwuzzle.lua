--[[
    Script Name    : SpawnScripts/WestFreeport/BarberWhiskerwuzzle.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 08:10:22
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
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1020.mp3", "Hey you!  Scruffy!  Get over here!  You could use some work done!", "beckon", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1020.mp3", "Got a hot date?  Ya need ta get yerself fixed up!", "woowoo", 0, 0, Spawn, 0)
	end
end