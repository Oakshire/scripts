--[[
	Script Name	: SpawnScripts/BeggarsCourt/aRommulsloyalistNoTalk.lua
	Script Purpose	: a Rommuls loyalist
	Script Author	: <author-name> (Updated by Cynnar 2018.06.22 09:06:43)
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos

function spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Uh, maybe you shouldn't talk to me. I'm new at this.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Alright, this is why I joined the militia!", "", 1689589577, 4560189, Spawn)
	end
end

function death(NPC, Spawn)
	--Rom1 = GetSpawn(Spawn, 1370157)
	local zone = GetZone(NPC)
	local Rom1 = GetSpawnByLocationID(zone, 403036)
	if Rom1 == nil or not IsAlive(Rom1) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_4, 1)
		local Thaen = GetSpawn(Spawn, 1370066)
		Despawn(Thaen, 30000)
	end
end