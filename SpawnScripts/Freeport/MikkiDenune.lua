--[[
    Script Name    : SpawnScripts/Freeport/MikkiDenune.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.30 06:08:51
    Script Purpose : 
                   : 
--]]

local TheHiddenNewHalasian = 578

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetQuestStep(Spawn, TheHiddenNewHalasian) == 1 then
    conversation = CreateConversation()
    PlayFlavor(NPC, "mikki_denune/freeport_combined/quest/racial/barbarian/mikki_denune_001.mp3", "", "hello", 1266503208, 1855564642, Spawn)
    AddConversationOption(conversation, "Actually, I was wondering if you could give me some religious advice.", "dlg1")
    StartConversation(conversation, NPC, Spawn, "Greetings, my fellow barbarian!  Come to join in a brawl or two?")
    else
     PlayFlavor(NPC, "", "Join in the fights and bring glory to the Ancient Sister, Sullon Zek, Goddes of Rage!", "", 0, 0, Spawn)
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "mikki_denune/freeport_combined/quest/racial/barbarian/mikki_denune_002.mp3", "", "", 2853940916, 2151822106, Spawn)
 AddConversationOption(conversation, "I guess it's a good thing you aren't in New Halas then?", "dlg2")
 StartConversation(conversation, NPC, Spawn, "One and the same!  I plant my axe in flesh, break bones and spill blood all in glory of The Ancient Sister, Sullon Zek, Goddess of Rage!")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, TheHiddenNewHalasian, 1)
 conversation = CreateConversation()
 PlayFlavor(NPC, "mikki_denune/freeport_combined/quest/racial/barbarian/mikki_denune_003.mp3", "", "", 1465365118, 1774107216, Spawn)
 AddConversationOption(conversation, "I'm glad to hear it, Mikki.")
 StartConversation(conversation, NPC, Spawn, "You're a sharp blade, "..GetName(Spawn)..".  I did visit there, in fact, I had thought about moving there, but once I saw it, I knew my place was here in Freeport.")
end 


function respawn(NPC)

end

