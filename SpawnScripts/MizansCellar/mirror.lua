--[[
    Script Name    : SpawnScripts/MizansCellar/mirror.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.22 05:09:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetRequiredQuest(NPC,5749,4,1,0,1)
end

function Version(NPC)
end

function casted_on(NPC, Spawn, Message)
    if Message == "clean" then
    if QuestStepIsComplete(Spawn,5749,4)== false then
        SetStepComplete(Spawn,5749,4)
        local zone = GetZone(NPC)
        local Table2 = GetSpawnByLocationID(zone,133776545)
        SpawnSet(Table2,"model_type","7")
        SpawnSet(NPC,"model_type","0")
        PlaySound(NPC,"sounds/ui/place_item.wav",GetX(NPC), GetY(NPC), GetZ(NPC))

    end
end
end

        
function respawn(NPC)
	spawn(NPC)
end