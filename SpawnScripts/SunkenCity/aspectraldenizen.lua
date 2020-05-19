--[[
	Script Name	: SpawnScripts/SunkenCity/aspectraldenizen.lua
	Script Purpose	: a spectral denizen 
	Script Author	: Scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local MALE = 1
local FEMALE = 2
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
	local chance = math.random(1, 100)
	if chance <= 25 then
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 and spoke == false then
		spoke = true
		if GetGender(NPC) == MALE then
		elseif GetGender(NPC) == FEMALE then
			PlayFlavor(NPC, "voiceover/english/ghost_base_1/ft/ghost/ghost_base_1_1_halfhealth_gf_4c18f3ce.mp3", "Your struggle is for naught!", "", 1689672062, 2512623281)
		end
		AddTimer(NPC, 30000, "ResetSpoke")
	end
end

function ResetSpoke(NPC)
	spoke = false
end

function killed(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 25 then
	end
end