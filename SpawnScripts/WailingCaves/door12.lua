--[[
    Script Name    : SpawnScripts/WailingCaves/door12.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 08:02:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
     local zone = GetZone(NPC)
    local LordRee = GetSpawnByLocationID(zone, 404840)
    
    if GetTempVariable(LordRee, "HAILED1") == "false" and IsOpen == false then
    CloseDoor(NPC)
    SendMessage(Spawn, "Door is closed.", "yellow")
    elseif GetTempVariable(LordRee, "HAILED1") == "false" and IsOpen == true then
    CloseDoor(NPC)
    SendMessage(Spawn, "Door is closed.", "yellow")
    elseif IsAlive(LordRee) and IsOpen == true then
    CloseDoor(NPC)
    elseif IsAlive(LordRee) and IsOpen == false then
    OpenDoor(NPC)
    elseif not IsAlive(LordRee) and IsOpen == false then
    SendMessage(Spawn, "Door is closed.", "yellow")
  end
end


function respawn(NPC)
         spawn(NPC)
end

