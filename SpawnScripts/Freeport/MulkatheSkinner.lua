--[[
    Script Name    : SpawnScripts/Freeport/MulkatheSkinner.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 4)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/petretailer/troll_petretailer_service_evil_1_hail_gf_fcf05629.mp3", "''House trained?'' What's that mean?", "confused", 3843089934, 581581763, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/petretailer/troll_petretailer_service_evil_1_hail_gf_98b4570.mp3", "This isn't a petting zoo. Either buy something or get lost.", "scold", 4230863124, 20005039, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/petretailer/troll_petretailer_service_evil_1_hail_gf_1ad76180.mp3", "Yeah, that particular one was, uh, bred to have three legs.", "ponder", 2854482447, 103253848, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/petretailer/troll_petretailer_service_evil_1_hail_gf_6f21b83d.mp3", "Just don't feed 'em after midnight.", "wink", 785931983, 438527802, Spawn)
    end 
end


function targeted(NPC, Spawn)
    if GetDistance(Spawn, NPC) < 10 then
        hailed(NPC, Spawn)
    end
end

function respawn(NPC)

end

