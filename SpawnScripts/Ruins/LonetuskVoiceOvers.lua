--[[
	Script Name	: SpawnScripts/Ruins/LonetuskVoiceOvers.lua
	Script Purpose	: Handles voice overs for the Lonetusk.
	Script Author	: Scatman
	Script Date	: 2009.08.20
	Script Notes	: 
--]]

function generic_aggro(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_aggro_2d2ccd12.mp3", "Incoming! Summon the warriors.", "", 3730616476, 4212115469)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_aggro_478609c4.mp3", "This must be my lucky day.", "", 1552928496, 830976152)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_maofighter_42d206ef.mp3", "Kill the ugly one! He has the most armor!", "", 1385896447, 1033709680)
	end
end

function generic_healthchanged(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_battle_27011747.mp3", "Who cares if they're stronger, we're orcs!", "", 769549584, 170271605)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_battle_c234f7ec.mp3", "We don't need reinforcements. Attack!", "", 3931748607, 200204217)
	end
end

function generic_killed(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_victory_4a834d11.mp3", "I killed one?", "", 494264984, 880425961)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_victory_5ec9f9e2.mp3", "Keep fighting while I get these boots!", "", 1910539619, 2233613105)
	end
end

function generic_death(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/orc_lonetusk/ft/orc/orc_lonetusk_2_death_937a01b8.mp3", "I can't see! Where are they?", "", 1920179873, 1406566187)
end
