--[[
    Script Name    : SpawnScripts/IsleRefuge1/Garveninvisiblecube.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 06:09:23
    Script Purpose : 
                   : 
--]]
local QuestOfferCheck = false -- Avoids spamming quest offer when when/out of range

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
if QuestOfferCheck==false then
    if GetClass(Spawn)==0 and not HasQuest(Spawn,5725) and not HasCompletedQuest(Spawn, 5725) then
    OfferQuest(NPC,Spawn,5725)
    QuestOfferCheck = true
    AddTimer(NPC,7000,"TimerReset")
    end
end
end

function respawn(NPC)
	spawn(NPC)
end

function TimerReset(NPC)
    QuestOfferCheck = false
    end