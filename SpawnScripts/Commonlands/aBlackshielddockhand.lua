--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshielddockhand.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.07 03:01:18
    Script Purpose : 
                   : 
--]]

BlackshieldRecruitID = 299540

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function dlg1(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "timer1")
    StartConversation(conversation, NPC, Spawn, "This a calm seas kind'a deal.  You don't ask questions about it.")
end

function timer1(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldRecruit = GetSpawnByLocationID(zone, BlackshieldRecruitID)
if BlackshieldRecruit ~= nil then
AddTimer(BlackshieldRecruit, 3000, "dlg2", 1, Spawn)
end
   end


function timer3(NPC, Spawn)
local zone = GetZone(NPC)
local BlackshieldRecruit = GetSpawnByLocationID(zone, BlackshieldRecruitID)
if BlackshieldRecruit ~= nil then
AddTimer(BlackshieldRecruit, 3000, "dlg4", 1, Spawn)
end
   end

 
function dlg3(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Continue eavesdropping.]", "timer3")
    StartConversation(conversation, NPC, Spawn, "I can.  I got gold for ale and beddin'.  That's all I care for.")
end
 

 
function dlg5(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Who, me?")
    StartConversation(conversation, NPC, Spawn, "Finally.  Come 'ere courier, and take this message to the rendezvous.")
end