	--[[
	Script Name	: SpawnScripts/Baubbleshire/aMistyThicketShadebloom.lua
	Script Purpose	: a Misty Thicket Shadebloom
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

local HELPING_A_FRIEND_AGAIN = 324 -- was 71

function spawn(NPC)
	SetRequiredQuest(NPC, HELPING_A_FRIEND_AGAIN, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end