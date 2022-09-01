--[[
    Script Name    : SpawnScripts/QeynosCitizenshipTrialChamber/afallenknight.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.31 03:08:14
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
    Door = GetSpawn(NPC,22101355)
    if Door ~= nil then
    Despawn(Door)
    end
end

function hailed(NPC, Spawn)
if CalloutCount == true then
    choice = MakeRandomInt(1,2)
if choice == 1 then
Say(NPC,"Avenge my death...")
else
Say(NPC,"Unghhh...")
end 
    CalloutCount = false
else
    choice = MakeRandomInt(1,3)
    if choice == 1 then
    SendMessage(Spawn, "The knight does not respond to your actions.")
    elseif choice == 2 then
    SendMessage(Spawn, "There is no indication the knight is still breathing.")
    elseif choice == 3 then
    SendMessage(Spawn, "No amount of hailing stirs the knight.")
    end   
end
end

function respawn(NPC)
	spawn(NPC)
end