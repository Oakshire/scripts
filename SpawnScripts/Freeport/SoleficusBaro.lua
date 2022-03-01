--[[
    Script Name    : SpawnScripts/Freeport/SoleficusBaro.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 08:07:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 6)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional5/human_eco_evil_2/ft/service/banker/human_banker_service_evil_2_hail_gm_d245cb35.mp3", "Ouch, that's your balance?", "wince", 3782988565, 2164924349, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "This is the Freeport Reserve.  What's your business?", "", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "Get on with your business, traveler.",  "", 1689589577, 4560189, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "I can handle all your banking needs.", "", 1689589577, 4560189, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "voiceover/english/optional5/human_eco_evil_2/ft/service/banker/human_banker_service_evil_2_hail_gm_4038e3ba.mp3", "No beggars and no solicitors.  If you don't have business to conduct then stand aside!", "heckno", 3154750611, 2096341840, Spawn)
    else
    PlayFlavor(NPC, "", "What services are you interested in, citizen?", "hello", 1689589577, 4560189, Spawn)
    end 
end

function respawn(NPC)

end

