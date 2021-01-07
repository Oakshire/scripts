--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout1.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.29 07:04:57
    Script Purpose : Sapswill Scout chitchat 
                   : 
--]]

function spawn(NPC)
     AddTimer(NPC, 5000, "EmoteLoop")         
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())

    text = math.random(1,3)

    if text == 1 then
        Say(NPC, "The High Shaman fights still. Help he needs though.")
    elseif text == 2 then
        Say(NPC, "The fog spread and village lost.")
    else
        Say(NPC, "Who do this to our Sapswill brothers!")	
    end 
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