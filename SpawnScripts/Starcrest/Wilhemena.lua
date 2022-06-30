--[[
    Script Name    : SpawnScripts/Starcrest/Wilhemena.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.28 04:06:07
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	local choice = math.random(0, 100)
	if choice <= 25 then
		Talk(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
    else
Talk(NPC,Spawn)
end
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1068415951, 2036199467, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 3151047462, 2904038035, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/baker/human_baker_service_good_1_hail_gf_cca9cdef.mp3", "Welcome friend, welcome.  I hope you brought your appetite with you!", "wink", 488782681, 166399094, Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end