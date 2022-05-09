--[[
    Script Name    : SpawnScripts/Antonica/SentryElmsley.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.08 10:05:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Keep your eyes open. Bandits have been seen on the road ahead.", "", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end