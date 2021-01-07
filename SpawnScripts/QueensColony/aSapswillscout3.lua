--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout3.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.18 07:07:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
     AddTimer(NPC, 5000, "EmoteLoop") 
end

function hailed(NPC, Spawn)
     FaceTarget(NPC, Spawn)
end

function respawn(NPC)
     spawn(NPC)
end

function EmoteLoop(NPC)
     local choice = math.random(1, 2)
     if choice == 1 then
  	 PlayAnimation(NPC, 11256)
         AddTimer(NPC, 7000, "EmoteLoop")
     else
         PlayAnimation(NPC, 11976)
         AddTimer(NPC, 8500, "EmoteLoop")       
     end
end