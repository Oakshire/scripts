--[[
    Script Name    : SpawnScripts/qeynos_combined02/KhaiLightfall.lua
    Script Author  : Rylec
    Script Date    : 2021.02.14 09:02:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    EmoteLoop(NPC)
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

function EmoteLoop(NPC)
    local emote = MakeRandomInt(1,4)  

        if emote == 1 then
            PlayAnimation(NPC, 11649)  -- glare
        elseif emote == 2 then
            PlayAnimation(NPC, 11881)  -- no
        elseif emote == 3 then
            PlayAnimation(NPC, 11882)  -- nod
        else
            PlayAnimation(NPC, 11976)  -- peer
        end

    math.randomseed(os.time())    
    AddTimer(NPC, math.random(8000,17000), "EmoteLoop")
end
