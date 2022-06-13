--[[
    Script Name    : SpawnScripts/QeynosHarbor/TanuaDorlin.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_1e9a743c.mp3", "Please mind the plates, they're very hot.", "scold", 1075794847, 2019936086, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1646021457, 4149179615, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1048257184, 2248522628, Spawn, 0)
	end
end