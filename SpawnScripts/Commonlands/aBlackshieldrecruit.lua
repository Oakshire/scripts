--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshieldrecruit.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.07 12:01:27
    Script Purpose : 
                   : 
--]]


local BlackshieldDockhandID = 299539

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
    spawn(NPC)
end
 

 
function dlg(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "timer")
    StartConversation(conversation, NPC, Spawn, "Nice set ups, though don't yous think?")   
end

function timer(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 3000, "dlg1", 1, Spawn)
end
   end

function timer2(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
if BlackshieldDockhand ~= nil then
AddTimer(BlackshieldDockhand, 3000, "dlg3", 1, Spawn)
end
   end
  
function dlg2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "timer2")
    StartConversation(conversation, NPC, Spawn, "I knows, but I can't help to wonders who the client is.")
end





function dlg4(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg5")
    StartConversation(conversation, NPC, Spawn, "Yous don't ever wond... Hey, there ya are.")
end
 




function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
        if HasSpellEffect(Spawn, 5459) then
        dlg(NPC, Spawn)
end
   end




