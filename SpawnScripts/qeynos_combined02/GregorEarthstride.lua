--[[
    Script Name    : SpawnScripts/qeynos_combined02/GregorEarthstride.lua
    Script Author  : Rylec
    Script Date    : 2021.09.06 12:09:08
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "EmoteLoop")  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)
    
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1008.mp3", "I can't ever seem to find the arrows I need! Nightbow's shop here is good, but it's a bit pricey.", "idle", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,5)

    if emoteChoice == 1 then
-- boggle
        PlayAnimation(NPC, 10856)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- confused
        PlayAnimation(NPC, 11214)
        AddTimer(NPC, MakeRandomInt(7000,11000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- heckno
        PlayAnimation(NPC, 11680)
        AddTimer(NPC, MakeRandomInt(4000,8000), "EmoteLoop")
    elseif emoteChoice == 4 then
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(4000,8000), "EmoteLoop")
    else
-- whome
        PlayAnimation(NPC, 13295)
        AddTimer(NPC, MakeRandomInt(5000,9000), "EmoteLoop")	
    end
end