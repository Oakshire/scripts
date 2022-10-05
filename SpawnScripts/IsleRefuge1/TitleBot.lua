--[[
    Script Name    : SpawnScripts/IsleRefuge1/TitleBot.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.02 04:10:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	AddMasterTitle("Lord", 1) -- create new title for all players, is prefix
	AddCharacterTitle(Spawn, "Lord") -- add title to the current player
	SetCharacterTitlePrefix(Spawn, "Lord") -- set the characters current prefix to the newly created title
	
end

function respawn(NPC)
	spawn(NPC)
end