--[[
    Script Name    : SpawnScripts/WillowWood/SaliniaBrooklily.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.15 06:02:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "The amazing thing about nature is its ability to balance life with no assistance.  Unfortunately, the influx of people to this city is disrupting this balance. ", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end