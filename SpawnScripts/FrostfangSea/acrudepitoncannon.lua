--[[
	Script Name		:	SpawnScripts/FrostfangSea/acrudepitoncannon.lua
	Script Purpose	:	for the spawn "a cude piton cannon"
	Script Author	:	theFoof
	Script Date		:   2013.6.5
	Script Notes	:	
--]]

local SiegeOver = 53

function spawn(NPC)
	SetRequiredQuest(NPC, SiegeOver, 1)
	LoadCannon(NPC) -- this starts the firing loop
end

function respawn(NPC)
	spawn(NPC)
end

function LoadCannon(NPC) -- sets the cannon to load the harpooon and start a timer
	SpawnSet(NPC, "visual_state", "20580")
	AddTimer(NPC, 5000, "FireCannon")
end

function FireCannon(NPC) -- fires the cannon and loops back to LoadCannon
	SpawnSet(NPC, "visual_state", "20579")
	AddTimer(NPC, 2000, "kill_fire")
	AddTimer(NPC, 15000, "LoadCannon")
end

function kill_fire(NPC) -- stops the firing animation from repeating
	SpawnSet(NPC, "visual_state", "53347")
end
function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'destroy the cannon' then
		if GetQuestStep(Spawn, SiegeOver) == 1 then
			SpawnSet(NPC, "action_state", "2018")
			AddStepProgress(Spawn, SiegeOver, 1, 1)
			AddTimer(NPC, 1000, "depop")
		end
	end
end

function depop(NPC)
	Despawn(NPC)
end