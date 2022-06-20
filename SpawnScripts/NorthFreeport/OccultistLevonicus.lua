--[[
    Script Name    : SpawnScripts/NorthFreeport/OccultistLevonicus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/occultist_levonicus/fprt_north/100_soc_human_dismal_levonicus_no_7b98c294.mp3", "Please do not interrupt my meditations, fool!  I need absolute silence to ponder this important matter.", "", 1533598759, 2001566934, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end