--[[
    Script Name    : SpawnScripts/QeynosHarbor/SarbithPlegnog.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:54
    Script Purpose : Associated with The Broken Pen from ToS.  https://eq2.fandom.com/wiki/The_Broken_Pen
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1005.mp3", "Isn't the Ak'Anon Clock beautiful!  Certainly it should be admired for its genius and complexity.", "orate", 0, 0, Spawn, 0)
end