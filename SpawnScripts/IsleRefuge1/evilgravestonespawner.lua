--[[
    Script Name    : SpawnScripts/IsleRefuge1/evilgravestonespawner.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 12:09:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5747, 1)
SetRequiredQuest(NPC, 5747, 2)
end

function casted_on(NPC, Spawn, Message)
    local zone = GetZone(NPC)
    local Rockbelly = GetSpawnByLocationID(zone, 133774610)
    if Message == "kick gravestone" and Rockbelly == nil  then
    if GetQuestStep(Spawn,5747) ==1 then
    SendPopUpMessage(Spawn, "You have disturbed the fallen captain's grave!", 230, 230, 230)
    RockbellyNew = SpawnByLocationID(zone,133774610)
    Attack(RockbellyNew,Spawn)
    SetStepComplete(Spawn,5747,1)
    end
end
end

function respawn(NPC)
	spawn(NPC)
end
