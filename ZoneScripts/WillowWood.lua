--[[
	Script Name	: ZoneScripts/WillowWood.lua
	Script Purpose	: Willow Wood
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: Updated by Jabantiz (4/22/2017)
--]]

local WOODELF_MENTOR_QUEST_3 = 215
local A_RABID_WOLF = 2370107

function init_zone_script(Zone)
	SetLocationProximityFunction(Zone, 798.53, -15.94, -602.98, 10, "InRange")
end

function InRange(Zone, Spawn)
	if HasQuest(Spawn, WOODELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, WOODELF_MENTOR_QUEST_3) == 4 then
		local wolf = GetSpawn(Spawn, A_RABID_WOLF)
		if wolf == nil then
			SpawnWolfForQuest(Zone, Spawn)
		elseif not IsInCombat(wolf) then
			Despawn(wolf)
			SpawnWolfForQuest(Zone, Spawn)
		end
	end
end

function SpawnWolfForQuest(Zone, Spawn)
	local wolf = SpawnMob(Zone, A_RABID_WOLF, 0, 770.647, 0.814391, -611.79, 258.078)
	AddHate(Spawn, wolf, 100)
	SendMessage(Spawn, "You hear a growling in the hills to the east.")
end