--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshieldrecruit.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.07 12:01:27
    Script Purpose : 
                   : 
--]]


local BlackshieldDockhandID = 299539
function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "InRange", Spawn)
end

function dlg(NPC, Spawn)
       conversation = CreateConversation()
      AddConversationOption(conversation, "[Continue eavesdropping.]", "continuedialogue")
       StartConversation(conversation, NPC, Spawn, "Nice set ups, though don't yous think?")   
end

function continuedialogue(NPC, Spawn)
   local zone = GetZone(NPC)
   local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
   if  BlackshieldDockhand ~= nil then
   AddTimer(NPC, 1000,  "dlg1", 1, Spawn)
end
   end

function dlg1(NPC, Spawn)
   local zone = GetZone(NPC)
   local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
   if  BlackshieldDockhand ~= nil then
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "continuedialogue2")
  StartConversation(conversation, BlackshieldDockhand , Spawn, "This a calm seas kind'a deal.  You don't ask questions about it.")
end
   end


function continuedialogue2(NPC, Spawn)
   local zone = GetZone(NPC)
   local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
   if  BlackshieldDockhand ~= nil then
   AddTimer(NPC, 1000,  "dlg2", 1, Spawn)
end
   end




function dlg2(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg3")
  StartConversation(conversation, NPC, Spawn, "I knows, but I can't help to wonders who the client is.")
end


function dlg3(NPC, Spawn)
  local zone = GetZone(NPC)
  local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
   if  BlackshieldDockhand ~= nil then
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg4")
  StartConversation(conversation, BlackshieldDockhand, Spawn, "I can.  I got gold for ale and beddin'.  That's all I care for.")
end
  end

function dlg4(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg5")
  StartConversation(conversation, NPC, Spawn, "Yous don't ever wond... Hey, there ya are.")
end

function dlg5(NPC, Spawn)
        local zone = GetZone(NPC)
     local BlackshieldDockhand = GetSpawnByLocationID(zone, BlackshieldDockhandID)
  FaceTarget(NPC, BlackshieldDockhand)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Who, me?")
  StartConversation(conversation, BlackshieldDockhand, Spawn, "Finally.  Come 'ere courier, and take this message to the rendezvous.")
end

function respawn(NPC)
         spawn(NPC)
end

function InRange(NPC, Spawn)
        if HasSpellEffect(Spawn, 5459) then
        dlg(NPC, Spawn)
end
   end




