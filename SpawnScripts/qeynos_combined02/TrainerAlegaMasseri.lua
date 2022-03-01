--[[
    Script Name    : SpawnScripts/qeynos_combined02/TrainerAlegaMasseri.lua
    Script Author  : Rylec
    Script Date    : 2021.02.18 01:02:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "mood_state", 11852)
    AddTimer(NPC, 75000, "EmoteLoop")    
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1041.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "mood_state", 0)
    SpawnSet(NPC, "action_state", 11852)
    local Emote = MakeRandomInt(1,2)    

        if Emote == 1 then
            PlayAnimation(NPC, 10745)
            AddTimer(NPC, 2500, "ResetMood") 
        else
            PlayAnimation(NPC, 11882)
            AddTimer(NPC, 2500, "ResetMood") 
        end
end

function ResetMood(NPC)
    SpawnSet(NPC, "mood_state", 11852)
    SpawnSet(NPC, "action_state", 0)
    AddTimer(NPC, 75000, "EmoteLoop") 
end