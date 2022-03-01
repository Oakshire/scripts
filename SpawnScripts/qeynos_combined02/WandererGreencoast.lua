--[[
    Script Name    : SpawnScripts/qeynos_combined02/WandererGreencoast.lua
    Script Author  : Rylec
    Script Date    : 2021.08.07 11:08:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 1000, "EmoteLoop")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1061.mp3", "...", "hello", 0, 0, Spawn)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,2)

    if emoteChoice == 1 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(8000,13000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(14000,18000), "EmoteLoop")
    end
end

function respawn(NPC)
	spawn(NPC)
end