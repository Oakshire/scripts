--[[
    Script Name    : SpawnScripts/QueensColony/MeriBogfoot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Meri Bogfoot dialog
    Modified Date  : 2020.04.09
    Modified by    : premierio015
    Notes          : Added dialogues and anims.
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function respawn(NPC)
    spawn(NPC)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,4)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1019.mp3", "", "", 0, 0, Spawn)

    text = math.random(1,3)

    if text == 1 then
        Say(NPC, "Left foot, right foot, spin...")
    elseif text == 2 then
        Say(NPC, "I hope my father doesn't see this.")
    else
        Say(NPC, "My father runs the bank here over behind Myrrin's tower")	
    end
end

function EmoteLoop (NPC)
    math.randomseed(os.time())
    local choice = math.random(1,6)

    if choice == 1 then
-- dance
        PlayAnimation(NPC, 11298)
        AddTimer(NPC, 10500, "Idle")	
    elseif choice == 2 then
-- flustered
	PlayAnimation(NPC, 11558)
	AddTimer(NPC, 4500, "Idle")
    elseif choice == 3 then
-- shimmy
	PlayAnimation(NPC, 12235)
	AddTimer(NPC, 1700, "Idle")
    elseif choice == 4 then
-- kiss
	PlayAnimation(NPC, 11762)
        AddTimer(NPC, 3500, "Idle")
    elseif choice == 5 then
-- flirt
	PlayAnimation(NPC, 11557)
        AddTimer(NPC, 30000, "Idle")
    else
-- flourish
	PlayAnimation(NPC, 298)
	AddTimer(NPC, 8500, "Idle")
    end
end

function Idle(NPC)
	PlayAnimation(NPC, 323)    
        EmoteLoop(NPC)
end