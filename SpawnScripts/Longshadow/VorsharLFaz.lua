--[[
	Script Name	: SpawnScripts/Longshadow/VorsharLFaz.lua
	Script Purpose	: Vorshar L`Faz 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function InRange(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function SaySomethingRandom(NPC, Spawn)
	choice = math.random(1, 3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_a8fbb723.mp3", "The arcane scientists hone their minds through the study of arcane arts, but they will never become as cunning as a skilled trader.", "", 4254147398, 134359674, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_cd3a748b.mp3", "The withering hands of the Dismal Rage priests look more like hands of death than hands that can heal people.", "", 2122145851, 2411357575, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_coalitionoftradesfolke/ft/eco/evil/darkelf_male_eco_evil_coalitionoftradesfolke_hail_gm_263a8bb0.mp3", "Although they serve to protect the city, the individuals of the Freeport Militia are only loyal to their own self interest and nothing more.", "", 3104017481, 741752503, Spawn)
	end
end