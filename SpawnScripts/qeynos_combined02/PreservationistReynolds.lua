--[[
    Script Name    : SpawnScripts/qeynos_combined02/PreservationistReynolds.lua
    Script Author  : Rylec
    Script Date    : 2021.08.13 03:08:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    PlayFlavor(NPC, "voiceover/english/preservationist_reynolds/qey_elddar/100_soc_human_tunarian_officer_reynolds_no_2a5aeb44.mp3", "I haven't heard anything from the last scout party.  They're a tough bunch. I hope they're all right.", "", 1752705355, 1563128162, Spawn)

--    local voice = MakeRandomInt(1,3)

--    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1047.mp3", "...", "hello", 0, 0, Spawn) -- To be used at certain times when their is no voice over option (based on player/guild level?)
end

function respawn(NPC)
	spawn(NPC)
end