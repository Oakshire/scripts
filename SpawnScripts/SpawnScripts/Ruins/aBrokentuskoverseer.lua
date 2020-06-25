--[[
	Script Name	: SpawnScripts/Ruins/aBrokentuskoverseer.lua
	Script Purpose	: a Brokentusk overseer
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/BrokentuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	AddVisualStateLoop(NPC, 1000, math.random(0, 2000), 10783, 450) -- attack
	AddVisualStateLoop(NPC, 1000, math.random(0, 2000), 12028, 450) -- point
	AddVisualStateLoop(NPC, 1000, math.random(0, 2000), 10912, 450) -- brandish
	AddVisualStateLoop(NPC, 1000, math.random(0, 2000), 1646, 450) -- pugilist attack 2
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