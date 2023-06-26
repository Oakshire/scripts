--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/Afailedapplicant.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.25 06:06:01
    Script Purpose : 
                   : 
--]]

local CalloutCount = true

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    if GetQuestStep(Spawn, 5718) >=4 or GetQuestStep(Spawn, 5719) >=4 or GetQuestStep(Spawn, 5720) >=4 or GetQuestStep(Spawn, 5721) >=4 or GetQuestStep(Spawn, 5722) >=4 or GetQuestStep(Spawn, 5723) >=4 then
    DoorCheck(NPC,Spawn) 
end
end

function DoorCheck(NPC,Spawn)
    Door = GetSpawn(NPC,1640023)
    if Door ~= nil then
    Despawn(Door)
    end
    local zone = GetZone(NPC)
    if GetSpawnByLocationID(zone,133785371) ~=nil then
    Despawn(GetSpawnByLocationID(zone,133785371))
    end
end

function hailed(NPC, Spawn)
if CalloutCount == true then
    choice = MakeRandomInt(1,2)
if choice == 1 then
Say(NPC,"Qeynos...filth...")
else
Say(NPC,"Unghhh...")
end 
    CalloutCount = false
else
    choice = MakeRandomInt(1,3)
    if choice == 1 then
    SendMessage(Spawn, "The applicant does not respond to your actions.")
    elseif choice == 2 then
    SendMessage(Spawn, "There is no indication the applicant is still breathing.")
    elseif choice == 3 then
    SendMessage(Spawn, "This applicant obviously failed due to weakness.")
    end   
end
end

function respawn(NPC)
	spawn(NPC)
end