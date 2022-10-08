--[[
    Script Name    : SpawnScripts/Antonica/Quigley.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.27 06:06:23
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericHail(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "Good day, adventurer. Care to take a look at my merchandise?", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Hello, friend. Welcome to my shop.", "", 0, 0, Spawn, 0)
end
end

function respawn(NPC)
	spawn(NPC)
end