--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuardTanglor.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 11:09:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    choice = MakeRandomInt(1,2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/guard_tanglor/tutorial_island02_fvo_hail2.mp3", "Grand day!", "hello", 1061173021, 910608022, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/kerran_eco_farsea_1/ft/service/guard/kerran_guard_service_farsea_1_hail_gm_1d37e9de.mp3", "I may be a hired hand of the Far Sea Trading Company, but I take pride in my work.", "sniff", 1219327636, 870968867, Spawn, 0)
    end      
end

function respawn(NPC)
	spawn(NPC)
end