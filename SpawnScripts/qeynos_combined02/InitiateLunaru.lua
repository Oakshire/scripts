--[[
    Script Name    : SpawnScripts/qeynos_combined02/InitiateLunaru.lua
    Script Author  : Rylec
    Script Date    : 2021.02.14 08:02:49
    Script Purpose : 
                   : 
--]]

    local count = 1

function spawn(NPC)

end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1048.mp3", "", "", 0, 0, Spawn)

    if count == 1 then
        stand(NPC, Spawn)   
    elseif count > 1 and count < 15 then
        count = count + 1
        Say(NPC, "Sorry, I can't speak now.  I must prepare for my sparring exercises.")
    else
        count = 1
        Say(NPC, "Sorry, I can't speak now.  I must prepare for my sparring exercises.")
    end

    AddTimer(NPC, 40000, "Sit")    
end

function respawn(NPC)
    spawn(NPC)
end

function stand(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, "539")
    AddTimer(NPC, 1500, "turn", 1, Spawn)
    count = count + 1
end

function turn(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    AddTimer(NPC, 1000, "talk")
end

function talk(NPC)
    Say(NPC, "Sorry, I can't speak now.  I must prepare for my sparring exercises.")  
end

function Sit(NPC)
    PlayAnimation(NPC, "538")
    AddTimer(NPC, 1200, "countReset")
end


function countReset(NPC)
    SpawnSet(NPC, "visual_state", "540")
    count = 1
end