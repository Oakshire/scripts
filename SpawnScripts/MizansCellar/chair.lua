--[[
    Script Name    : SpawnScripts/MizansCellar/chair.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:57
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,2,1,0,1)
end

function Version(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "clean" then
    if QuestStepIsComplete(Spawn,5749,2)== false then
        SetStepComplete(Spawn,5749,2)
        local zone = GetZone(NPC)
        local Object2 = GetSpawnByLocationID(zone,133776539)
        SpawnSet(Object2,"model_type","4")
        SpawnSet(NPC,"model_type","0")
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))

    end
end
end

        
function respawn(NPC)
	spawn(NPC)
end