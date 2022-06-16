--[[
    Script Name    : SpawnScripts/QeynosHarbor/MarinerWhistlethorn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.15 08:06:30
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
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_2b42c14f.mp3", "After twelve weeks at sea, bashing the head of a nosy landlubber sounds quite appealing!", "shakefist", 1936614211, 2469553737, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_a837e4f4.mp3", "Once I am off duty, I will be heading straight to the tavern.", "ponder", 3411176323, 4077972480, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_f9615d93.mp3", "This ain't a show stranger, buy your goods and shove-off!", "glare", 1941361840, 4269078583, Spawn, 0)
	end
end