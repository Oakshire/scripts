--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminer.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.11 06:07:13
    Script Purpose : 
                   : 
--]]
 	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
 	
 local TheChomper = 5696

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if QuestIsComplete(Spawn, TheChomper) or HasItem(Spawn, 1285) then
RemoveLootItem(NPC, 1285) 
  end
end