--[[
    Script Name    : SpawnScripts/Nektropos1/BasementSecretDoor.lua
    Script Author  : smash
    Script Date    : 2016.09.13 11:09:11
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"

function spawn(NPC)
	SetRequiredHistory(NPC, HISTORY.NEK_CASTLE_BASEMENT_ACCESS, 1)
end