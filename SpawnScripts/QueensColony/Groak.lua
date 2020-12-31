--[[
    Script Name    : SpawnScripts/QueensColony/Groak.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Groak dialog | Rylec update: Visual state added (2020.10.16)
    Note           : Rylec note: InRange PlayFlavor (and that function in general) seems to be bugged
--]]

function spawn(NPC)
    AddTimer(NPC, 1000, "visualstate")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    math.randomseed(os.time())
    voice = math.random(1,3)

    if voice == 1 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1018.mp3", "", "", 0, 0, Spawn)
    elseif voice == 2 then
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1018.mp3", "", "", 0, 0, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1018.mp3", "", "", 0, 0, Spawn)	
    end

    text = math.random(1,3)

    if text == 1 then
        Say(NPC, "Good thing Murrar Shar is here!")
    elseif text == 2 then
        Say(NPC, "The finest delights you'll find here.")
    else
        Say(NPC, "It's amazing what you can make from a fish.")	
    end
end

function visualstate(NPC)
        math.randomseed(os.time())
        local choice = math.random (1,2)

        if choice == 1 then
	        SpawnSet(NPC, "visual_state", 12182)
	        AddTimer(NPC, 5000, "resetvisualstate")
        elseif choice == 2 then
	        SpawnSet(NPC, "visual_state", 11976)
	        AddTimer(NPC, 7600, "visualstate")
        end
end

function resetvisualstate(NPC)
        SpawnSet(NPC, "visual_state", 0)

        local time = math.random (2500,3500)       
	AddTimer(NPC, time, "visualstate") 	
end