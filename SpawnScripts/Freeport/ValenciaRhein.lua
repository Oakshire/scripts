--[[
    Script Name    : SpawnScripts/Freeport/ValenciaRhein.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/service/petretailer/human_petretailer_service_evil_2_hail_gf_98b4570.mp3", "This isn't a petting zoo. Either buy something or get lost.", "scold", 917011129, 1937345819, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/service/petretailer/human_petretailer_service_evil_2_hail_gf_fcf05629.mp3", "''House trained?'' What's that mean?", "confused", 489207300, 3510735305, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/service/petretailer/human_petretailer_service_evil_2_hail_gf_1ad76180.mp3", "Yeah, that particular one was, uh, bred to have three legs.", "ponder", 2565389482, 560555759, Spawn)
end
   end

function respawn(NPC)

end

