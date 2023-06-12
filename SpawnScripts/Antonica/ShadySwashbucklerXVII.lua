--[[
    Script Name    : SpawnScripts/Antonica/ShadySwashbucklerXVII.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.11 04:06:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/scribe_duvo/qey_elddar/100_scribe_halfling_duvo_callout1_c6eaefe5.mp3", "My apologies, friend. I did not see you there ... What is it you need?", "", 3948051330, 1166584264, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end