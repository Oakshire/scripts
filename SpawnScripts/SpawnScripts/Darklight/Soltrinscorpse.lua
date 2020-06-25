--[[
	Script Name		:	SpawnScripts/Darklight/Soltrinscorpse.lua
	Script Purpose	:	Used in quest "The Missing Recruit" (ID 141)
	Script Author	:	Cynnar
	Script Date		:	1/7/2016
	Script Notes	:	Soltrinscorpse (ID 340800)
--]]

local MissingRecruit = 141

function spawn(NPC)
	SpawnSet(NPC, "visual_state", 228)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == "Search for Soltrin's field kit" and not HasItem(Spawn, 13115, 1) then
			SummonItem(Spawn, 13115)
			SetStepComplete(Spawn, MissingRecruit, 1)
			RemoveSpawnAccess(NPC, Spawn)
		end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, MissingRecruit) and GetQuestStep(Spawn, MissingRecruit) == 1 then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end
