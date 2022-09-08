--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardVraen.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 10:09:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    choice = MakeRandomInt(1,3)
    if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_2b42c14f.mp3", "After twelve weeks at sea, bashing the head of a nosy landlubber sounds quite appealing!", "threaten", 1936614211, 2469553737, Spawn, 0)
    elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_a837e4f4.mp3", "Once I am off duty, I will be heading straight to the tavern.", "nod", 3411176323, 4077972480, Spawn, 0)
    elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/guard/halfelf_guard_service_farsea_1_hail_gf_f9615d93.mp3", "This ain't a show, stranger.  Buy your goods and shove-off!", "glare", 1941361840, 4269078583, Spawn, 0)
    end    
end

function respawn(NPC)
	spawn(NPC)
end