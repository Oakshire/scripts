--[[
    Script Name    : SpawnScripts/Commonlands/FrundtheBigGrin.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.19 04:05:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Frund likes soft things.", "", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end