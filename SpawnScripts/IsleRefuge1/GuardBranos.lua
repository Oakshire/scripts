--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardBranos.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 10:09:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/guard_tugar/tutorial_island02_fvo_hail3.mp3", "Keep walking... While you still can!", "shakefist", 4167828572, 1837602908, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end