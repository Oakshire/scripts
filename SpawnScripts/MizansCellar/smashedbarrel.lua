--[[
    Script Name    : SpawnScripts/MizansCellar/smashedbarrel.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC,5749,3,1,0,0)
end

function casted_on(NPC, Spawn, Message)
    if Message == "Put out fire" then
     if QuestStepIsComplete(Spawn,5749,3)== false then
       PlayFlavor(Spawn,"","","tantrum_short",0,0)
        SpawnSet(NPC,"visual_state","0")
 AddTimer(NPC,1200,"FireOut",1,Spawn)
    end
    end
end

function FireOut(NPC,Spawn)
     if QuestStepIsComplete(Spawn,5749,3)== false then
        local zone = GetZone(NPC)
        local Object2 = GetSpawnByLocationID(zone,133776550)
        SpawnSet(Object2,"model_type","1428")
        SpawnSet(NPC,"model_type","0")
    end

end

function respawn(NPC)
	spawn(NPC)
end