--[[
	Script Name	: SpawnScripts/TimorousDeep/aHaoaeranturf-hunter.lua
	Script Purpose	: a Haoaeran turf-hunter 
	Script Author	: John Adams
	Script Date	: 2009.02.26
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	choice = math.random(1, 100)

	if choice <= 35 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_death_2f7345b4.mp3", "Mayday... mayday...", "", 2109502278, 2212415108, Spawn)
	end
end

function killed(NPC, Spawn)
	choice = math.random(1, 100)

	if choice <= 35 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_victory_9f0466af.mp3", "Score one for the spiroc!", "", 2170775157, 841438160, Spawn)
	end
end

function aggro(NPC, Spawn)
	choice = math.random(1, 100)

	if choice <= 35 then
		PlayFlavor(NPC, "voiceover/english/rok_combat_vo/a_spiroc/ft/_exp04/aviak/spiroc_aggro_ef272489.mp3", "Hostile at twelve o'clock!", "", 1038256671, 3948487543, Spawn)
	end
end

