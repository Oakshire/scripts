--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillscout2.lua
    Script Author  : Premierio015
    Script Date    : 2020.04.29 07:04:57
    Script Purpose : aSapswill scout chitchat
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", 540) 
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())

    text = math.random(1,3)

    if text == 1 then
        Say(NPC, "Return to the High Shaman we must.")
    elseif text == 2 then
        Say(NPC, "Barely make it out with my ears I did!!")
    else
        Say(NPC, "Lost the village is, but the fight is not over!")	
    end
end

function respawn(NPC)
    spawn(NPC)
end

