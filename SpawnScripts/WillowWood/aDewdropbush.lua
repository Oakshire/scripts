--[[
	Script Name	: SpawnScripts/WillowWood/aDewdropbush.lua
	Script Purpose	: a Dewdrop bush
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

local TRIBUTE_LEAVES = 214

function spawn(NPC)
	SetRequiredQuest(NPC, TRIBUTE_LEAVES, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end