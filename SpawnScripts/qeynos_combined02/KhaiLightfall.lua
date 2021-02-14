--[[
    Script Name    : SpawnScripts/qeynos_combined02/KhaiLightfall.lua
    Script Author  : Rylec
    Script Date    : 2021.02.14 09:02:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1048.mp3", "", "", 0, 0, Spawn)

    local choice = math.random(1,2)

        if choice == 1 then 
            Say(NPC, "May yourr life be uneventful frriend.")
        else
            Say(NPC, "Be gone before I call the guards.")
        end   
end

function respawn(NPC)
    spawn(NPC)
end

