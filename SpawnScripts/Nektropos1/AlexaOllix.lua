--[[
	Script Name		:	SpawnScripts/Nektropos1/AlexaOllix.lua
	Script Purpose	:	Alexa before changing into Ollix Everling
	Script Author	:	smash
	Script Date		:	9/12/2016
	Script Notes	:	
--]]

function spawn(NPC)
	SpawnSet(NPC, "attackable", "1")
	SpawnSet(NPC, "show_level", "1")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function AlexaTalk(NPC)
	if GetTempVariable(NPC, "talked") ~= "true" then
		SetTempVariable(NPC, "talked", "true")
		Say(NPC, "Ahh, finally you have arrived. Father will thank me for supplying him with more parts for his experiments.")
	end
end

function aggro(NPC, Spawn)
	AlexaTalk(NPC)
end

function attacked(NPC, Spawn)
	AlexaTalk(NPC)
end

function death(NPC, Spawn)
	--spawn Ollix Everling
	SpawnByLocationID(GetZone(NPC), 616644)
end

function CombatReset(NPC)
	SetTempVariable(NPC, "talked", nil)
end