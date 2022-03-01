--[[
    Script Name    : SpawnScripts/qeynos_combined02/ShepherdSellar.lua
    Script Author  : Rylec
    Script Date    : 2021.09.01 06:09:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1064.mp3", "", "", 0, 0, Spawn)

    Say(NPC, "Keep your eyes on the horizon, my friend.  Only through vigilance and defense can we keep Qeynos safe.") 	
end

function respawn(NPC)
	spawn(NPC)
end