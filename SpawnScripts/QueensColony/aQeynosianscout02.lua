--[[
    Script Name     : SpawnScripts/QueensColony/aQeynosianscout02.lua
    Script Author   : Premierio015
    Script Date     : 2020.04.18 05:04:25
    Script Purpose  : a Qeynosian scout script 
    Notes           : 
--]]

function spawn(NPC)
    SetTempVariable(NPC, "AggroWoodelf", "true")  -- to avoid aggro message triggering multiple times at once
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1050.mp3", "", "", 0, 0, Spawn)

    text = math.random(1,2)

    if text == 1 then
        Say(NPC, "Keep up this noise and the Morak will have us all for dinner!")
    else
        Say(NPC, "The smell of death lingers near.")
    end
end

function respawn(NPC)
    spawn(NPC)
end

function aggro(NPC)
    if GetTempVariable(NPC, "AggroWoodelf")  == "true" then
        local choice = math.random(1,3)
        if choice == 1 then
            PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gm_8fcdd59.mp3", "You ruined your own lands, but you won't ruin these.", "", 2959701317, 2218756744)
        elseif choice == 2 then
            PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gm_e78cd055.mp3", "You covered your approach well, but it doesn't matter much now.", "", 284366883, 129090731)
        else
            PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_aggro_gm_b9683a31.mp3", "Winds carried your voice long ago. I'm prepared now.", "", 338462220, 1958805273)
        end
        SetTempVariable(NPC, "AggroWoodelf", "false") 
    else
        AddTimer(NPC, 5000, "resetAggro")
    end
end

function killed(NPC)
    local choice = math.random(1,3)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_victory_gm_1d908867.mp3", "The soil thanks you for your donation.", "", 2150629553, 2562009754)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_victory_gm_43dcda71.mp3", "May your body feed the mighty oaks.", "", 4105687893, 3153330697)
    else
        PlayFlavor(NPC, "voiceover/english/woodelf_base_1/ft/woodelf/woodelf_base_1_1_victory_gm_729d9b4e.mp3", "To the earth from where you came.", "", 3172278083, 481654365)
    end
end

function resetAggro(NPC)
    SetTempVariable(NPC, "AggroWoodelf", "true") 
end