--[[
	Script Name	: SpawnScripts/Ruins/aLonetuskpounder.lua
	Script Purpose	: a Lonetusk pounder
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Ruins/LonetuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_aggro(NPC, Spawn)
	end
end

function healthchanged(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		local health_percent = GetHP(NPC) / GetMaxHP(NPC)
		if health_percent < 0.50 and spoke == false then
			spoke = true
			generic_healthchanged(NPC, Spawn)
		end
	end
end

function killed(NPC, Spawn)
	generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_death(NPC, Spawn)
	end
end