--[[
    Script Name    : SpawnScripts/QueensColony/Groak.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Groak dialog | Rylec update: Visual state added (2020.10.16)
    Note           : Rylec note: InRange PlayFlavor (and that function in general) seems to be bugged
--]]

function spawn(NPC)
--    SetPlayerProximityFunction(NPC, 10, "InRange")
    AddTimer(NPC, 1000, "visualstate")
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC, Player)
    choice = math.random(1,2)

    if choice == 1 then
	PlayFlavor(NPC, "", "Good thing Murrar Shar is here!", "", 1689589577, 4560189, Spawn)
    if choice == 2 then
	PlayFlavor(NPC, "", "It's amazing what you can make from a fish.", "", 1689589577, 4560189, Spawn)
    else
        PlayFlavor(NPC, "", "The finest delights you'll find here.", "", 1689589577, 4560189, Spawn)
    end
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1016.mp3", "", "", 0, 0, Spawn)
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

