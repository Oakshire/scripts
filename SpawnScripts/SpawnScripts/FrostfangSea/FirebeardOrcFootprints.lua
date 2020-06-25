--[[
	Script Name	: SpawnScripts/FrostfangSea/FirebeardOrcFootprints.lua
	Script Purpose	: the quest Beets the Alternative
	Script Author	: theFoof
	Script Date	: 2013.5.18
--]]
local BeetsAlternative = 13

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Player)
    if HasCompletedQuest(Player, BeetsAlternative) or GetQuestStep(Player, BeetsAlternative) > 2 then
	    AddSpawnAccess(NPC, Player)
	end
end