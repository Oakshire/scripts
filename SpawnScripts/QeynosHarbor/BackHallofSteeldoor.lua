--[[
    Script Name    : SpawnScripts/QeynosHarbor/BackHallofSteeldoor.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.24 08:10:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 16, "InRange", "LeaveRange")   
end


function InRange(NPC,Spawn)
       if HasItem(Spawn,1001032,1) and not IsOpen(2210362) then
    SetAccessToEntityCommand(Spawn,NPC,"Open", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
else
    SetAccessToEntityCommand(Spawn,NPC,"Open", 1)
    SpawnSet(NPC, "show_command_icon", 1)
    SpawnSet(NPC, "display_hand_icon", 1)    
end
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Open' then
    if HasItem(Spawn,1001032,1) and not IsOpen(2210362) then
    local widget = GetSpawn(Spawn, 2210362)
        OpenDoor(widget)
        UseWidget(2210362)
        RemoveItem(Spawn,1001032,1)
        SendMessage(Spawn,"Your old Halls of Steel key opens the door but crumbles in the lock.")
        AddTimer(NPC,11000,"CloseDoor")
    else
        SendMessage(Spawn,"The large door doesn't budge.")
    end        
end
end



function CloseDoor(NPC)
    local widget = GetSpawn(Spawn, 2210362)
        CloseDoor(widget)
end

function respawn(NPC)
	spawn(NPC)
end