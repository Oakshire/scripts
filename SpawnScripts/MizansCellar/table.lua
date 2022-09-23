--[[
    Script Name    : SpawnScripts/MizansCellar/table.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 04:09:18
    Script Purpose : Workaround until we figure out furniture placement
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,1,1,0,1)
end

function Version(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "clean" then
    if QuestStepIsComplete(Spawn,5749,1)== false then
        SetStepComplete(Spawn,5749,1)
        local zone = GetZone(NPC)
        local Table2 = GetSpawnByLocationID(zone,133776538)
        SpawnSet(Table2,"model_type","6")
        SpawnSet(NPC,"model_type","0")
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))
    end
end
end

        
function respawn(NPC)
	spawn(NPC)
end