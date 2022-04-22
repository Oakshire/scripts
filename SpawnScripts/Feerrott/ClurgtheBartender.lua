--[[
    Script Name    : SpawnScripts/Feerrott/ClurgtheBartender.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.21 03:04:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
 PlayFlavor(NPC, "", "No more drinks!  The bar is closed!", "", 1689589577, 4560189, Spawn)
 end


function death(NPC, Spawn)
PlayFlavor(NPC, "", "Bar's... closed...", "", 1689589577, 4560189, Spawn)
end