--[[
    Script Name    : SpawnScripts/Freeport/MissionaryGZule.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:47
    Script Purpose : 
                   : 
--]]

local RustySymbolOfMarr = 584

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule.mp3", "", "", 1791825577, 3485372568, Spawn)
    AddConversationOption(conversation, "Is that why you are afraid to go in yourself, hmm?", "dlg01")
    if HasQuest(Spawn, RustySymbolOfMarr) then
    AddConversationOption(conversation, "I found something that may be of interest to you.", "quest")
    end
    AddConversationOption(conversation, "I think I can handle myself just fine, thanks.")
    StartConversation(conversation, NPC, Spawn, "You better watch your step if you choose to enter the Temple of War. I would suspect the greeting for a person like yourself would be a dagger in the back rather than a handshake.")
end


function dlg01(NPC, Spawn)
     FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule001.mp3", "", "", 1035950997, 818649186, Spawn)
    AddConversationOption(conversation, "What's the problem?  You haven't done enough sacrificing to sit with the big boys yet?", "dlg02")
    StartConversation(conversation, NPC, Spawn, "It is my station to be here, you worm.  Soon enough I'll take my place inside the temple.")
end



function dlg02(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule002.mp3", "", "", 2865163916, 2862700718, Spawn)
    AddConversationOption(conversation, "For some reason I see you standing here for a while.") 
    StartConversation(conversation, NPC, Spawn, "I'll have you know that I have done all the sacrificing I need to do, lucky for your worthless carcass.  I only have to find a symbol of the old paladins to desecrate to fulfill my advancement.")
end

function quest(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule003.mp3", "", "", 212622032, 1987675547, Spawn)
  AddConversationOption(conversation, "You won't charge me?  How about you pay me for it.  I know you need this.", "complete")
  StartConversation(conversation, NPC, Spawn, "I could take the symbol of Marr off your hands.  You certainly don't want to carry that thing openly around here.  I won't even charge the usual fee to dispose of it.")
end

function complete(NPC, Spawn)
 FaceTarget(NPC, Spawn)
  SetStepComplete(Spawn, RustySymbolOfMarr, 1)
  conversation = CreateConversation()
  PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule004.mp3", "", "", 2506235491, 1587607096, Spawn)
  AddConversationOption(conversation, "A pleasure doing business with you.")
  StartConversation(conversation, NPC, Spawn, "Fine, here is a small pouch of coins for the symbol.  You know it's worthless to you anyway.")
end

function respawn(NPC)

end

