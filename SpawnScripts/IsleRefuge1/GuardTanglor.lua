--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardTanglor.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 11:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/guard_tanglor/tutorial_island02_fvo_hail2.mp3", "Grand day!", "hello", 1061173021, 910608022, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end