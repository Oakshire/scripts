--[[
    Script Name    : SpawnScripts/WailingCaves/door12.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.18 08:02:02
    Script Purpose : 
         Note    : Updated for various states & related indicators. Dorbin 2/17/2022
--]]

function spawn(NPC)

end

function usedoor(NPC, Spawn, IsOpen)
     local zone = GetZone(NPC)
    local LordRee = GetSpawnByLocationID(zone, 404840)
    
    -- Checks if Ree is spawned but not active and player doesn't have a key
    if IsAlive(LordRee) and GetTempVariable(LordRee, "HAILED1") == "true" and not HasItem(Spawn, 2006) and IsOpen == false then
    CloseDoor(NPC)
    SendMessage(Spawn, "The door is locked.", "yellow")
    
    --Closes door
    elseif GetTempVariable(LordRee, "HAILED1") == "false" and IsOpen == true then
    CloseDoor(NPC)
    SendMessage(Spawn, "The door is closed.", "yellow")
    
    -- if player has 'a large orcish key', the door can be closed
    elseif IsAlive(LordRee) and IsOpen == true and HasItem(Spawn, 2006) then
    CloseDoor(NPC)
    
    -- if player has 'a large orcish key', the door can be opened and they lose their key
    elseif IsAlive(LordRee) and HasItem(Spawn, 2006) and IsOpen == false then
    OpenDoor(NPC)
    RemoveItem(Spawn, 2006)
    SendMessage(Spawn, "Your key falls apart as the door opens.", "yellow")
    else
    
    --if Ree is active or dead
        --if not IsAlive(LordRee) and IsOpen == false then
    SendMessage(Spawn, "The door won't budge.", "yellow")
  end
end


function respawn(NPC)
         spawn(NPC)
end

