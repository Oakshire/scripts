--[[
	Script Name	: SpawnScripts/Graveyard/acursedcorpseman.lua
	Script Purpose	: a cursed corpseman
	Script Author	: Scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local spoke = false

function spawn(NPC)
	spoke = false
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		local choice = math.random(1, 6)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave, you will now take my place!", "", 485726074, 3646499350, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_c6c2672d.mp3", "Brains! It's what's for dinner.", "", 2091371377, 2422178491, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_daf16808.mp3", "To the grave with you!", "", 958122326, 1810359159, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_2168c5.mp3", "Seek death and it finds you.", "", 2988489621, 1045543573, Spawn)
		elseif choice == 5 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_8bc7a2cc.mp3", "Your blood calls to me.", "", 1242322025, 1154999668, Spawn)
		elseif choice == 6 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_aggro_c77d7bff.mp3", "Your eyes are so pretty.", "", 1412152942, 873988632, Spawn)
		end
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.50 and spoke == false then
		spoke = true
		RandomCallOut(NPC, Spawn)
		AddTimer(NPC, 30000, "ResetSpoke")
	end
end

function RandomCallOut(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_halfhealth_29344c6f.mp3", "I didn't need those bones anyway.", "", 1704957193, 2042978689)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_halfhealth_a4c947e4.mp3", "I'm shattered and broken.", "", 4021018144, 1305053073)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_halfhealth_d9ece37f.mp3", "You've shaken the dust from my bones.", "", 2011286772, 326848383)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_halfhealth_f1d542e0.mp3", "Dying didn't feel good the first time.", "", 766636803, 1915881366)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_aggro_18d1544d.mp3", "As I rise from the grave, you will now take my place!", "", 485726074, 3646499350)
	end
end

function ResetSpoke(NPC)
	spoke = false
end

function killed(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		local choice = math.random(1, 5)
		if choice == 1 then
				PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_victory_39c9d69e.mp3", "We're all just bones in the end.", "", 3276297174, 633510318, Spawn)
		elseif choice == 2 then
				PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_victory_cbcd383a.mp3", "Their bones will join mine!", "", 680786598, 666536798, Spawn)
		elseif choice == 3 then
				PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_ccde17c2.mp3", "Another falls to join our ranks.", "", 3285235030, 4198320186, Spawn)
		elseif choice == 4 then
				PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_d2a649e7.mp3", "The life ebbs from them so quickly.", "", 2674394976, 3151731037, Spawn)
		elseif choice == 5 then
				PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_victory_fda8e7a9.mp3", "So stops the awful beating of their heart.", "", 1120117600, 3872148135, Spawn)
		end
	end
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 25 then
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_bb6b2b8e.mp3", "You cannot eliminate us!", "", 897103301, 541292352, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/optional3/skeleton_base_2/ft/skeleton/skeleton_base_2_1_death_edc04fb8.mp3", "That pile of bones was my friend!", "", 2317728806, 1758283676, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
		elseif choice == 4 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
		end
	end
end