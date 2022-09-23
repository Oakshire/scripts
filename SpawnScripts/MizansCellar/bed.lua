--[[
    Script Name    : SpawnScripts/MizansCellar/bed.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,5,1,0,1)
end

function Version(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "clean" then
    if QuestStepIsComplete(Spawn,5749,5)== false then
        SetStepComplete(Spawn,5749,5)
        local zone = GetZone(NPC)
        local Object2 = GetSpawnByLocationID(zone,133776549)
        SpawnSet(Object2,"model_type","3")
        SpawnSet(NPC,"model_type","0")
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))

    end
end
end

        
function respawn(NPC)
	spawn(NPC)
end