--[[
	Script Name	: SpawnScripts/Nettleville/BarmaidLollaCotgrove.lua
	Script Purpose	: Barmaid Lolla Cotgrove <Provisioner>
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_callout_a2de4d52.mp3", "...And that will go over here and the kegs go there... Yeah. Yeah. Yeah. What do you need?", "point", 2609682603, 931995827, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/baker/human_baker_service_good_2_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1697227241, 4084483111, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barmaid_lolla_cotgrove/qey_village01/qey_village01_barmaid_lolla_cotgrove_multhail1_ec6e0398.mp3", "Can't you see I'm busy? I've no time for small talk!", "no", 370156187, 590443744, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/baker/human_baker_service_good_2_hail_gf_1e9a743c.mp3", "Please mind the plates, they're very hot.", "scold", 1418065096, 412156270, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_2/ft/service/baker/human_baker_service_good_2_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine? I myself have a hard time deciding between the two.", "confused", 591848764, 941431809, Spawn)
	end
end
