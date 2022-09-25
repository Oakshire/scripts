--[[
    Script Name    : SpawnScripts/IsleRefuge1/ebiksspringer.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 07:09:03
    Script Purpose : 
                   : 
--]]
local EbiksMissingParts = 5755

function spawn(NPC)
	SetRequiredQuest(NPC, EbiksMissingParts, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "search parts" then
		SetStepComplete(Spawn, EbiksMissingParts, 2)
	end
end