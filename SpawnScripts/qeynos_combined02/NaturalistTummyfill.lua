--[[
    Script Name    : SpawnScripts/qeynos_combined02/NaturalistTummyfill.lua
    Script Author  : Rylec
    Script Date    : 2021.08.18 04:08:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    PlayFlavor(NPC, "voiceover/english/naturalist_tummyfill/qey_elddar/100_soc_halfling_tunarian_tummyfill_no_8092d272.mp3", "Nothing on Norrath can replicate the natural creations that are right in front of us.", "", 2667097175, 4211150032, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end