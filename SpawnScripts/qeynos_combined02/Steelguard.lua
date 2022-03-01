--[[
    Script Name    : SpawnScripts/qeynos_combined02/Steelguard.lua
    Script Author  : Rylec
    Script Date    : 2021.09.06 09:09:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1060.mp3", "", "", 0, 0, Spawn)

    AddTimer(NPC, 35000, "ResetState", 1, Spawn)
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11812) 
end