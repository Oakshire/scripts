--[[
    Script Name    : SpawnScripts/Kugup/Flowers.lua
    Script Author  : neatz09
    Script Date    : 2023.04.29 09:04:33
    Script Purpose : 
                   : 
--]]
local ColdBloodedRelations = 5808

function spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Pick" then
		if GetQuestStep(Spawn, ColdBloodedRelations) == 1 then
			AddStepProgress(Spawn, ColdBloodedRelations, 1, 1)
			Despawn(NPC)
end
end
end

function respawn(NPC)
	spawn(NPC)
end