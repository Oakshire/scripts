--[[
    Script Name    : SpawnScripts/IsleRefuge1/Ssilith.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 12:09:41
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/guard_ssilith/tutorial_island02/035_guard_ssilith_hail2_7e824b59.mp3", "You have much to learn!", "", 1714571502, 2406946117, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end