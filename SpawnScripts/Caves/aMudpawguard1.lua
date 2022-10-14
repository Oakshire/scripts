--[[
    Script Name    : SpawnScripts/Caves/aMudpawguard1.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.10 04:10:02
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
TheLook(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function TheLook(NPC)
    local choice = MakeRandomInt(1,2)
    if choice == 1 then
    SpawnSet(NPC,"model_type",3816) 
    elseif choice ==2 then
    SpawnSet(NPC,"model_type",1384) 
    end
end