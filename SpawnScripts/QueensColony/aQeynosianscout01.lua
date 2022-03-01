--[[
    Script Name    : SpawnScripts/QueensColony/aQeynosianscout.lua
    Script Author  : premierio015
    Script Date    : 2020.04.18 05:04:21
    Script Purpose : Qeynosian Scout script
                   : 
--]]

function spawn(NPC)
    SetTempVariable(NPC, "AggroGnome", "true")  -- to avoid aggro message triggering multiple times at once
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1005.mp3", "", "", 0, 0, Spawn)

    text = math.random(1,2)

    if text == 1 then
        Say(NPC, "Shhh. The Morak are near!")
    else
        Say(NPC, "Hopefully our brethren can be brought back from the brink of death.")
    end
end

function respawn(NPC)
    spawn(NPC)
end

function aggro(NPC)
    if GetTempVariable(NPC, "AggroGnome")  == "true" then
        local choice = math.random(1,3)
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_aggro_gf_7d3374f8.mp3", "You'll never steal my experiment!", "", 2315424682, 472771026)
        elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_aggro_gf_b59b3c3f.mp3", "However you got in here, you'll never leave alive!", "", 2616990629, 1631099033)
        else
            PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_aggro_gf_63dac9bc.mp3", "Ha! Trying to copy my formula? I'll kill you!", "", 3500771042, 3995771679)
        end
        SetTempVariable(NPC, "AggroGnome", "false") 
    else
        AddTimer(NPC, 5000, "resetAggro")
    end
end

function killed(NPC)
    local choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_victory_gf_879bb3ce.mp3", "Finally, I can get back to work.", "", 477519519, 1189386206)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_victory_gf_d6f9f4a6.mp3", "Don't damage the bodies!", "", 2149878969, 3124019586)
    else
        PlayFlavor(NPC, "voiceover/english/gnome_base_1/ft/gnome/gnome_base_1_1_victory_gf_3e57f1d6.mp3", "Excellent, a new body for my experiments!", "", 3183071935, 797675273)
    end
end

function resetAggro(NPC)
    SetTempVariable(NPC, "AggroGnome", "true") 
end
