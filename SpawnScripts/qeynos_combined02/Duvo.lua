--[[
    Script Name    : SpawnScripts/qeynos_combined02/Duvo.lua
    Script Author  : Rylec
    Script Date    : 2021.09.01 04:09:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1,2)
    
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", "My apologies, friend. I did not see you there ... What is it you need?", "", 3948051330, 1166584264, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_multhail1_a72f47c8.mp3", "I'm sorry. I cannot help you.", "", 1448300901, 17119076, Spawn)
    end     
end

function respawn(NPC)
	spawn(NPC)
end