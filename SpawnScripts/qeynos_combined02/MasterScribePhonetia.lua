--[[
    Script Name    : SpawnScripts/qeynos_combined02/MasterScribePhonetia.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 04:10:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 4)
	if choice == 1 then
	PlayFlavor(NPC, "", "There is no language that is too hard to understand.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "Learning a new language can broaden your mind!", "",  1689589577, 4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "", "I will have you learn a new language in no time!", "", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
	PlayFlavor(NPC, "", "Have a local dialect you need to learn? I have got you covered!", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)
	spawn(NPC)
end