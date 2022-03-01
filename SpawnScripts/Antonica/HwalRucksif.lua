--[[
    Script Name    : SpawnScripts/Antonica/HwalRucksif.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 07:06:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetPlayerProximityFunction(NPC, 15, "InRange", "", Spawn)
end


function InRange(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/hwal_rucksif/antonica/quest/quest_hwal_rucksif_callout_30d20c93.mp3", "Ho, there!  You wouldn't mind helping out a hard working dwarf, would ya?", "hello", 596769271, 2784563151, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end