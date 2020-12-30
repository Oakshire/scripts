--[[
    Script Name    : SpawnScripts/QueensColony/Geredo.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Geredo dialog
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end
function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    choice = math.random(1,2)
    if choice == 1 then
                PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_001.mp3", "Do you happen to have any mechanical leg extenders? I want to see the water.", "agree", 2902186099, 1357276764, Spawn)
    else
   		PlayFlavor(NPC, "voiceover/english/geredo/boat_06p_tutorial02_fvo_002.mp3", "Thinking I should design a new mechanical boat. It would be perfect! Yes, perfect indeed!", "ponder", 2630458163, 1309095480, Spawn)
    end
end