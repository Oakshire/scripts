--[[
    Script Name    : SpawnScripts/Freeport/BankerMacrinusSanctus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 07:08:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "", "What services are you interested in, citizen?", "hello", 1689589577, 4560189, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/erudite_eco_evil_1/ft/service/banker/erudite_banker_service_evil_1_hail_gm_4038e3ba.mp3", "No beggars and no solicitors.  If you don't have business to conduct then stand aside!", "heckno", 3015580004, 2290082920, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional5/erudite_eco_evil_1/ft/service/banker/erudite_banker_service_evil_1_hail_gm_d245cb35.mp3", "Ouch, that's your balance?", "wince", 3090423261, 561224022, Spawn)
    end
end

function respawn(NPC)

end

