--[[
	Script Name		:	SpawnScripts/FrostfangSea/alazyRyGorrorc.lua
	Script Purpose	:	for the lazy Ry'Gorr orc spawn
	Script Author	:	theFoof
	Script Date		:	2013.6.10
	Script Notes	:	
--]]

local ThroughEyes = 58

function spawn(NPC)
	SetRequiredQuest(NPC, ThroughEyes, 1)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "the Ry'Gorr Scrying Eye" then
		if GetQuestStep(Spawn, ThroughEyes) == 1 then
			SetStepComplete(Spawn, ThroughEyes, 1)
			RemoveSpawnAccess(NPC, Spawn)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, ThroughEyes) and GetQuestStep(Spawn, ThroughEyes) < 2 then
		AddSpawnAccess(NPC, Spawn)
	elseif not HasCompletedQuest(Spawn, ThroughEyes) then
		AddSpawnAccess(NPC, Spawn)
	end
end