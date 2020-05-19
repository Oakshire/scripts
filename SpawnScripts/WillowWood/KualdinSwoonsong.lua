--[[
	Script Name	: SpawnScripts/WillowWood/KualdinSwoonsong.lua
	Script Purpose	: Kualdin Swoonsong 
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		Talk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_multhail2_1c41a7b8.mp3", "Hail, fair adventurer. If you can spare some time, my devotees are gathering to hear the latest masterpiece from yours truly. ", "", 2123310145, 515687997, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_callout_47db249c.mp3", "Gather around people ... gather around. I'll be warming up my voice in a few minutes.", "smirk", 1269733907, 434806140, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kualdin_swoonsong/qey_village05/100_kualdin_swoonsong_multhail1_7f060d18.mp3", "Hail fair, adventurer. Please be on your way. I've no time for chatting with commoners. I must warm up my voice. My fans await me...", "", 2685665398, 3421389957, Spawn)
	end
end
