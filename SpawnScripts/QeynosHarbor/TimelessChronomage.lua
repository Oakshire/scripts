--[[
    Script Name    : SpawnScripts/QeynosHarbor/TimelessChronomage.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.17 04:06:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3", "The chronomagics aren't aligned with this timeline yet.  You'll need to return in the future to relive your past.", "no", 0, 0, Spawn, 0)

end

function respawn(NPC)
	spawn(NPC)
end