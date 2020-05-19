--[[
	Script Name		:	SpawnScripts/FrostfangSea/callingthembackcube.lua
	Script Purpose	:	spawn access for the runes in the quest "Calling Them Back"
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	
--]]

local CallingBack = 35

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, CallingBack) then
		local LocID = GetSpawnLocationID(NPC)
		if LocID == 572693 then
			if not QuestStepIsComplete(Spawn, CallingBack, 1) then
				AddSpawnAccess(NPC, Spawn)
			end
		elseif LocID == 572694 then
			if not QuestStepIsComplete(Spawn, CallingBack, 2) then
				AddSpawnAccess(NPC, Spawn)
			end
		elseif LocID == 572695 then
			if not QuestStepIsComplete(Spawn, CallingBack, 3) then
				AddSpawnAccess(NPC, Spawn)
			end
		elseif LocID == 572692 then
			if not QuestStepIsComplete(Spawn, CallingBack, 4) then
				AddSpawnAccess(NPC, Spawn)
			end
		elseif LocID == 572696 then
			if not QuestStepIsComplete(Spawn, CallingBack, 5) then
				AddSpawnAccess(NPC, Spawn)
			end
		end
    end
end