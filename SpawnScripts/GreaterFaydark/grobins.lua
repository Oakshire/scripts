--[[
	Script Name	: SpawnScripts/GreaterFaydark/generic_grobin.lua
	Script Purpose	: a grobin (anything) 
	Script Author	: John Adams
	Script Date	: 2009.02.06
	Script Notes	: JA - the math.random upper value, I just made up. Tune to your liking.
			: Also note that if you run across a "grobin" that should say something different, create a new spawnscript for it.
--]]


function aggro(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_aggro_68f43c9.mp3", "Arroop!", "", 789139818, 1768762311, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_aggro_c809bb68.mp3", "I grow bigger than you!", "", 1365081195, 1786804084, Spawn)
	else
	-- say nothing
	end

end

function healthchanged(NPC)

	if GetCurrentHP(NPC) <= (GetMaxHP(NPC) / 2) then
		choice = math.random(1,4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_25d9a433.mp3", "Grum! Grum! ", "", 1460066353, 1003945639, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_4e5ee4ae.mp3", "Smash the squishies.", "", 3016834030, 2330929155, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_603b0f3b.mp3", "Run away from the mines!", "", 861506750, 2339330363, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_battle_cf61b767.mp3", "Groblin's go!", "", 1309387887, 223459313, Spawn)
		else
		-- say nothing
		end
	end

end

function death(NPC, Spawn)
	choice = math.random(1,1)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/exp03_combatvo/goblin_greater_faydark/ft/_exp03/goblin/goblin_greater_faydark_death_31b8eb31.mp3", "I shall grow no more!", "", 2582377610, 2713862197, Spawn)
	end
end
