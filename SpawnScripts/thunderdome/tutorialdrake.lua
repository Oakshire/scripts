--[[
    Script Name    : SpawnScripts/thunderdome/tutorialdrake.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.31 08:07:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,3000,"hailed")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SendStateCommand(NPC, 10783) -- attack
--	SendStateCommand(NPC, 65)
	
end

function respawn(NPC)
	spawn(NPC)
end