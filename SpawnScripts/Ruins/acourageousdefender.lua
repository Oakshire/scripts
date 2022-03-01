--[[
	Script Name	: SpawnScripts/Ruins/acourageousdefender.lua
	Script Purpose	: a courageous defender <Freeport Militia>
	Script Author	: Scatman
	Script Date	: 2009.08.29
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/RuinsDefendersVoiceOvers.lua")

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	
	if sli == 159510 or sli == 159511 then
		-- Two guards praying to the statue of Luclin at the docks.
		AddVisualStateLoop(NPC, 1000, math.random(0, 500), 11150, 43918) -- cheer
		AddVisualStateLoop(NPC, 1000, math.random(0, 500), 10760, 43528) -- applaud
		AddVisualStateLoop(NPC, 1000, math.random(0, 500), 396, 33164) -- not worthy
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	generic_hail(NPC, Spawn)
end