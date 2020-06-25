--[[
	Script Name	: SpawnScripts/Graveyard/acrumblingskeleton.lua 
	Script Purpose	: a crumbling skeleton
	Script Author	: Scatman
	Script Date	: 2009.07.10
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

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(1, 100)
	if chance <= 10 then
		local choice = math.random(1, 2)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_fbcb503b.mp3", "Rest in peace.", "", 3591309093, 1423656405, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/skeleton_base_1/ft/skeleton/skeleton_base_1_1_death_ff39f327.mp3", "Final death comes at last.", "", 3768284332, 62777040, Spawn)
		end
	end
end