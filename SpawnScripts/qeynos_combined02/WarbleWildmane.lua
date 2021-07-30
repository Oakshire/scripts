--[[
    Script Name    : SpawnScripts/qeynos_combined02/WarbleWildmane.lua
    Script Author  : Rylec
    Script Date    : 2021.07.29 01:07:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)
    
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1026.mp3", "", "", 0, 0, Spawn)    
    
    conversation = CreateConversation()

    AddConversationOption(conversation, "Sorry to interrupt.  Goodbye.", "conv_01")
    StartConversation(conversation, NPC, Spawn, "Shh!  Old Treebark's talking!")
end

function conv_01(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    AddConversationOption(conversation, "Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Goodbye!")
end

function waypoints(NPC)
    MoveToLocation(NPC, 744.19, -16.16, -300.48, 3.5)
    AddTimer(NPC, math.random(20000,40000), "corner_A_01") 
end

function corner_A_01(NPC)
    MoveToLocation(NPC, 753.28, -16.23, -297.81, 3.5)
    AddTimer(NPC, math.random(20000,60000), "between_corner_A_and_B") 
end

function between_corner_A_and_B(NPC)
    MoveToLocation(NPC, 751.92, -16.17, -296.89, 3.5)
    AddTimer(NPC, math.random(20000,40000), "corner_A_02") 
end

function corner_A_02(NPC)
    MoveToLocation(NPC, 753.28, -16.23, -297.81, 3.5)
    AddTimer(NPC, math.random(20000,60000), "corner_B_01") 
end

function corner_B_01(NPC)
    MoveToLocation(NPC, 743.9, -16.64, -291.35, 3.5)
    AddTimer(NPC, math.random(20000,50000), "between_corner_B_and_C") 
end

function between_corner_B_and_C(NPC)
    MoveToLocation(NPC, 742.24, -16.43, -297.07, 3.5)
    AddTimer(NPC, math.random(20000,40000), "corner_B_02") 
end

function corner_B_02(NPC)
    MoveToLocation(NPC, 743.74, -16.56, -292.45, 3.5)
    AddTimer(NPC, math.random(20000,50000), "corner_C_01") 
end

function corner_C_01(NPC)
    MoveToLocation(NPC, 740.36, -16.39, -300.84, 3.5)
    AddTimer(NPC, math.random(20000,60000), "corner_A_03") 
end

function corner_A_03(NPC)
    MoveToLocation(NPC, 751.97, -16.15, -299.14, 3.5)
    AddTimer(NPC, math.random(20000,50000), "waypoints") 
end

function respawn(NPC)
	spawn(NPC)
end