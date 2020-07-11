--[[
    Script Name    : SpawnScripts/SerpentSewer/MarcusPuer.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 01:06:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
 SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "voiceover/english/marcus_puer/fprt_sewer02/quests/020_quest_marcus_puer_aoicallout02_1f18e638.mp3", "Just who I was looking for!  Come here, come here!", "", 2970554527, 4254211908, Spawn)
end

function LeaveRange(NPC, Spawn)

end