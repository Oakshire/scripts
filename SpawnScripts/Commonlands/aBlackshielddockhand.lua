--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshielddockhand.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.07 03:01:18
    Script Purpose : 
                   : 
--]]

BlackshieldRecruitID = 330284

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end


function dlg1(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg2")
  StartConversation(conversation, NPC , Spawn, "This a calm seas kind'a deal.  You don't ask questions about it.")
end

function dlg3(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "[Continue eavesdropping.]", "dlg4")
  StartConversation(conversation, NPC, Spawn, "I can.  I got gold for ale and beddin'.  That's all I care for.")
end

function respawn(NPC)

end

