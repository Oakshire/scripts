--[[
    Script Name    : SpawnScripts/Commonlands/Entui.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.15 09:03:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "This is my house, you should remember that.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "The rats across the river annoy my neighbors to no end, but I think they're kind of cute.", "", 1689589577, 4560189, Spawn)
	else
	PlayFlavor(NPC, "", "The fishing here isn't as good as I would have hoped.", "", 1689589577, 4560189, Spawn)
end
   end


function respawn(NPC)
	spawn(NPC)
end

