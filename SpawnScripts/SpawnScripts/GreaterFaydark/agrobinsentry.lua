--[[
	Script Name	: SpawnScripts/GreaterFaydark/agrobinsentry.lua
	Script Purpose	: a grobin sentry 
	Script Author	: John Adams
	Script Date	: 2009.03.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_aggro_c809bb68.mp3", "I grow bigger than you!", "", 1365081195, 1786804084, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_25d9a433.mp3", "Grum! Grum! ", "", 1460066353, 1003945639, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_death_31b8eb31.mp3", "I shall grow no more!", "", 2582377610, 2713862197, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_4e5ee4ae.mp3", "Smash the squishies.", "", 3016834030, 2330929155, Spawn)
	else
	end

end

