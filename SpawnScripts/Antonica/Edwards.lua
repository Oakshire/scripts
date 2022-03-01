--[[
    Script Name    : SpawnScripts/Antonica/Edwards.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 05:06:58
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    GenericHail(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 2)
	if choice == 1 then
	PlayFlavor(NPC, "", "Hello, friend. Welcome to my shop.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "If I know you adventuring types, you'll need one of these.", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "", "Good day, adventurer. Care to take a look at my merchandise?", "", 1689589577, 4560189, Spawn)
end
   end

function respawn(NPC)
	spawn(NPC)
end