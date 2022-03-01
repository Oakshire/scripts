--[[
	Script Name	: SpawnScripts/Graveyard/anovicegraverobber.lua
	Script Purpose	: a novice graverobber 
	Script Author	: Scatman
	Script Date	: 2009.07.25
	Script Notes	: 
--]]

local spoke = false
local MALE = 1
local FEMALE = 2

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
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 20 then
		if GetGender(NPC) == MALE then
			local choice = math.random(1, 3)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_aggro_gm_88cef174.mp3", "Overhear my plansies. Gore you I will!", "", 3355146665, 1217299863, Spawn)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gm_4af7a99.mp3", "You're not as sneaky as you thought.", "", 1683997219, 1178080164, Spawn)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gm_7c145a1f.mp3", "Sees us, did we? Must not let you talk then.", "", 1928944506, 4197211546, Spawn)
			end
		elseif GetGender(NPC) == FEMALE then
			local choice = math.random(1, 5)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_4af7a99.mp3", "You're not as sneaky as you thought.", "", 1898398655, 853136085, Spawn)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_7c145a1f.mp3", "Sees us, did we? Must not let you talk then.", "", 2661963919, 697614069, Spawn)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_aggro_gf_ce5970ec.mp3", "Startle us, you did! We'll remedy that.", "", 3905874632, 4086824059, Spawn)
			elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_aggro_gf_a3d8a506.mp3", "Not very nice of you to be all sneaky.", "", 2210593426, 1217099089, Spawn)
			elseif choice == 5 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_battle_gf_7509fbcd.mp3", "Youses never see this one coming.", "", 105547293, 3999948070, Spawn)
			end
		end
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 and spoke == false then
		spoke = true
		if GetGender(NPC) == MALE then
			local choice = math.random(1, 3)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gm_9c7df7ea.mp3", "That patch of fur will never grow back, you know.", "", 2241929269, 2874755723, Spawn)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gm_a2ace12c.mp3", "Don't hurt us! We're no threat to your mightiness.", "", 3593075606, 2907318102, Spawn)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_halfhealth_gm_7cab6d92.mp3", "That wasn't very nice to do, friend.", "", 413844109, 3656803270, Spawn)
			end
		elseif GetGender(NPC) == FEMALE then
			local choice = math.random(1, 4)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_halfhealth_gf_7cab6d92.mp3", "That wasn't very nice to do, friend.", "", 2063305887, 2078518166, Spawn)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_2/ft/ratonga/ratonga_base_2_1_halfhealth_gf_ff30e9f.mp3", "Shifty thingsies you are.", "", 1975586766, 1774921113, Spawn)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gf_9c7df7ea.mp3", "That patch of fur will never grow back, you know.", "", 4146309857, 1135607887, Spawn)
			elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_halfhealth_gf_a2ace12c.mp3", "Don't hurt us! We're no threat to your mightiness.", "", 1631608737, 385456101, Spawn)
			end
		end
	end
end

function killed(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 20 then
		if GetGender(NPC) == MALE then
			local choice = math.random(1, 3)
			if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_15e8fc93.mp3", "One less worry in my life!", "", 4116602987, 3804155045, Spawn)
			elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_732f23e7.mp3", "The dead tell no tales", "", 636430623, 2715556056, Spawn)
			elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gm_935883a.mp3", "Shhh ... shhh ... it's ok ... shhh ...shhh. Stop fighting it...", "", 1459182295, 1340643629, Spawn)
			end
		elseif GetGender(NPC) == FEMALE then
			PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_victory_gf_732f23e7.mp3", "The dead tell no tales", "", 1062202875, 1393213249, Spawn)
		end
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 20 then
		if GetGender(NPC) == MALE then
			PlayFlavor(NPC, "voiceover/english/optional3/ratonga_base_1/ft/ratonga/ratonga_base_1_1_death_gm_e9ba5c44.mp3", "Flee and take care of them later.", "", 2862575499, 3074650652, Spawn)
		elseif GetGender(NPC) == FEMALE then
		end
	end
end