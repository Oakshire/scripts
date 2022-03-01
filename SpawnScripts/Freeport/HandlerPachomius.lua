--[[
    Script Name    : SpawnScripts/Freeport/HandlerPachomius.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm3-mp3_64.mp3", "Yeah, that particular one was, uh, bred to have three legs.", "ponder", 101661289, 3669829351, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm4-mp3_64.mp3", "Just don't feed 'em after midnight.", "wink", 3010870801, 3135704910, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional4/eco_human_male_petretailer_1/dj_hmpre_hail_gm1-mp3_64.mp3", "''House trained?'' What's that mean?", "confused", 2399426249, 2846389365, Spawn)
  end
end

function respawn(NPC)

end

