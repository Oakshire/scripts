--[[
    Script Name    : SpawnScripts/Commonlands/Riki.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 05:03:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "What do you want?", "glare", 1689589577, 4560189 )
end

function respawn(NPC)
	spawn(NPC)
end

