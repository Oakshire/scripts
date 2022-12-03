--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/adistractedQeynosCacheguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 05:12:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "", 237358955, 1041617020, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_notcitizen_gm_8236a789.mp3", "Remove yourself from my presence, outsider.", "", 3302310786, 2767017909, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gf_2b7f45ad.mp3", "For the glory of Qeynos!", "", 2825851367, 3848266464, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end