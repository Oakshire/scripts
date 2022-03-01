--[[
    Script Name    : SpawnScripts/qeynos_combined02/NalonMesspie.lua
    Script Author  : Rylec
    Script Date    : 2021.09.08 10:09:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    SpawnSet(NPC, "visual_state", 0) 
    FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1,2)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_34b03729.mp3", "I'm sure we've met someplace before, you look so familiar!", "", 1550233671, 4104979611, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/halfling_eco_race_good/ft/eco/good/halfling_eco_race_good_hail_gm_74b0fd50.mp3", "A good joke deserves a good audience, I always say!", "", 95315026, 2602312757, Spawn)  
    end

    AddTimer(NPC, 40000, "ResetState", 1, Spawn)
end

function ResetState(NPC)
    SpawnSet(NPC, "visual_state", 11976) 
end

function respawn(NPC)
	spawn(NPC)
end