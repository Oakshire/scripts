--[[
	Script Name	: SpawnScripts/WillowWood/WoodsunFlowers.lua 
	Script Purpose	: a Dewdrop bush
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

local TributeFlowers = 216

function spawn(NPC)
	SetRequiredQuest(NPC, TributeFlowers, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end