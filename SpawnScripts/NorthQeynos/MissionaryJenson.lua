--[[
    Script Name    : SpawnScripts/NorthQeynos/MissionaryJenson.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 03:04:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/missionary_jenson/qey_north/100_soc_human_celestial_officer_jenson_no_836a222b.mp3", "We must always temper justice with mercy and forgiveness.", "", 2932212143, 3106715733, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end