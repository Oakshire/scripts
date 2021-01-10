--[[
    Script Name    : SpawnScripts/QueensColony/TheDarkPuppeteer.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.22 05:08:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
--        SetPlayerProximityFunction(NPC, 35, "InRange", "LeaveRange")
        EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1056.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)

end

function EmoteLoop(NPC)
        math.randomseed(os.time())
        local choice = math.random(1,2)
  
        if choice == 1 then
            PlayAnimation(NPC, 10956)
            AddTimer(NPC, 3300, "Idle")
        else
            PlayAnimation(NPC, 10961)
            AddTimer(NPC, 3500, "Idle")
        end
end

function Idle(NPC)
	PlayAnimation(NPC, 323)  
        EmoteLoop(NPC)
end

--function LeaveRange(NPC)
--        PlayAnimation(NPC, 323)  
--end