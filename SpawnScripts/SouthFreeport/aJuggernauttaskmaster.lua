--[[
    Script Name    : SpawnScripts/SouthFreeport/aJuggernauttaskmaster.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.04 04:05:04
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasLanguage(Spawn, 14) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1002.mp3", "If you're not wearing a Blood Red Headband then we have little to share.", "glare", 0, 0, Spawn, 14)
else 
    Garbled(NPC, Spawn, Faction)
end
end

function respawn(NPC)
	spawn(NPC)
end