--[[
	Script Name		:	wyrmdon.lua
	Script Purpose	:	Waypoint Path for wyrmdon.lua
	Script Author	:	Devn00b
	Script Date		:	04/09/2020 02:14:17 PM
	Script Notes	:	
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
    if GetFactionAmount(Spawn,11) >0 then
	if math.random(1,100)<25 then
	   	FaceTarget(NPC, Spawn)
 		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn, 0)
    end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1945337199, 2685949436, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 4141262779, 4227030045, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 4099618783, 4191002419, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2997871263, 2912813719, Spawn, 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end


--[[
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 939.72, -25.56, 72.05, 2, 30)
	MovementLoopAddLocation(NPC, 925.65, -25.56, 66.65, 2, 0)
	MovementLoopAddLocation(NPC, 910.81, -25.36, 84.67, 2, 0)
	MovementLoopAddLocation(NPC, 925, -25.49, 46.95, 2, 0)
	MovementLoopAddLocation(NPC, 931.56, -25.59, 29.07, 2, 0)
	MovementLoopAddLocation(NPC, 921.12, -25.48, 21.05, 2, 0)
	MovementLoopAddLocation(NPC, 901.38, -25.47, 41.4, 2, 0)
	MovementLoopAddLocation(NPC, 936.28, -25.56, 67.34, 2, 60)
	MovementLoopAddLocation(NPC, 901.38, -25.47, 41.4, 2, 0)
	MovementLoopAddLocation(NPC, 921.12, -25.48, 21.05, 2, 0)
	MovementLoopAddLocation(NPC, 931.56, -25.59, 29.07, 2, 0)
	MovementLoopAddLocation(NPC, 925, -25.49, 46.95, 2, 0)
	MovementLoopAddLocation(NPC, 910.81, -25.36, 84.67, 2, 0)
	MovementLoopAddLocation(NPC, 925.65, -25.56, 66.65, 2, 0)
	MovementLoopAddLocation(NPC, 939.72, -25.56, 72.05, 2, 60)
end--]]


