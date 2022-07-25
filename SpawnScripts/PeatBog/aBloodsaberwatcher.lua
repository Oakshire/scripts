--[[
    Script Name    : SpawnScripts/PeatBog/aBloodsaberwatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.27 05:05:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseTroll1.lua")

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
    local emoteChoice = MakeRandomInt(1,3)
    if emoteChoice == 1 then
        PlayFlavor(NPC, "","","peer",0,0)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
        PlayFlavor(NPC, "","","doubletake",0,0)
        AddTimer(NPC, MakeRandomInt(10000,15000), "EmoteLoop")	
    else
         PlayFlavor(NPC, "","", "sniff",0,0)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end