--[[
    Script Name    : SpawnScripts/Antonica/awanderingminstrel.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 07:08:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 4)
	if choice == 1 then
	PlayFlavor(NPC, "", "Have you heard the Bonny Lass?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "The townsfolk aren't as pleasant as they were during my last visit.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "Buy me a drink, and I'll sing you a song.", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
	PlayFlavor(NPC, "I always stop in to have some of Lanice's delightful ale.", "", 1689589577, 4560189, Spawn)
end
end




function respawn(NPC)
	spawn(NPC)
end