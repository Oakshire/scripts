--[[
    Script Name    : SpawnScripts/antonica/PeriniusAbatro.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.26 06:06:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "How do you do?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "Pleasant day, I'd say.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "", "Hello there!", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)
	spawn(NPC)
end