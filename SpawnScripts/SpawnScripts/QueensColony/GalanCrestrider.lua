--[[
    Script Name    : SpawnScripts/QueensColony/GalanCrestrider.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Galan Crestrider dialog
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
end

function InRange(NPC, Player)
    choice = math.random(1,2)

    if choice == 1 then
	PlayFlavor(NPC, "", "Welcome to Crestrider's Trading Post.", "", 1689589577, 4560189, Spawn)
    else
	PlayFlavor(NPC, "", "If you can trade it, we can buy it.", "", 1689589577, 4560189, Spawn)
    end
end
