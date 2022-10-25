--[[
    Script Name    : SpawnScripts/QeynosHarbor/BackHallofSteeldoor.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.24 08:10:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Open' then
    if HasItem(Spawn,1001032,1) then
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