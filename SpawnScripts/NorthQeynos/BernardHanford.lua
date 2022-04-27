--[[
    Script Name    : SpawnScripts/NorthQeynos/BernardHanford.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.24 01:04:17
    Script Purpose : Fabricated NPC that uses VOs. Missing VOs for Fhara... so we made her a husband to do all the work.
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if math.random(1,100) <=60 then
Talk(NPC,Spawn)
end    
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
Talk(NPC,Spawn)
end

function Talk(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_aoi_gm_1fa85d79.mp3", "Tired of coming home to a dull empty room?  Step inside! Even commoners can afford our low no hanggle prices!", "agree", 557767774, 2281784064, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_hail_gm_519527d8.mp3", "Please look at our wonderful selection!  We carry everything that a discerning adventurer needs.", "hello", 469990134, 2264633052, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_hail_gm_8bb00dfb.mp3", "Greetings traveler.  If you need home furnishings, you came to the right place!", "bow", 3382559797, 2499208775, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/housing/human_housing_service_good_1_hail_gm_fa2745af.mp3", "Welcome to our house of furnishings, friend.  Anything an adventurer desires is found within these walls!", "smile", 1437718638, 3841585195, Spawn)
	end

end