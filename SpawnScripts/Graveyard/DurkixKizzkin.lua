--[[
    Script Name    : SpawnScripts/Graveyard/DurkixKizzkin.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.11 09:11:16
    Script Purpose : 
                   : 
--]]

local BoneDust = 583

function spawn(NPC)
ProvidesQuest(NPC, BoneDust)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, BoneDust) and not HasCompletedQuest(Spawn, BoneDust) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "What?", "dlg1")
    AddConversationOption(conversation, "Indeed...")
    StartConversation(conversation, NPC, Spawn, "Fragments to dust. I'm a genius!")
    elseif HasQuest(Spawn, BoneDust) and GetQuestStep(Spawn, BoneDust) == 1 then
     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
     AddConversationOption(conversation, "Not yet.")
     StartConversation(conversation, NPC, Spawn, "Did you get the fragments?")
    elseif HasQuest(Spawn, BoneDust) and GetQuestStep(Spawn, BoneDust) == 2 then
     PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
     AddConversationOption(conversation, "Yes.", "complete") 
     StartConversation(conversation, NPC, Spawn, "Did you get the fragments?")
    elseif HasCompletedQuest(Spawn, BoneDust) then
     PlayFlavor(NPC, "", "Durkix, remember the name!", "", 1689589577, 4560189, Spawn)
end   
    end


function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "A muddy bone golem?", "dlg2")
 AddConversationOption(conversation, "A boney mud golem?", "dlg2")
 StartConversation(conversation, NPC, Spawn, "A bonemud golem! Or maybe a mudbone golem. I'll be famous!")
end

function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "To mix with mud...", "dlg3")
 StartConversation(conversation, NPC, Spawn, "No, no, no! A golem made from mud that has ground bones in it! Maybe it will increase the potency of the creature, or maybe it will make it more resistant to certain attacks! Or maybe it won't do anything at all! I need some bone fragments to grind up!")
end


function dlg3(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Sure... I'll help.", "dlg4")
 AddConversationOption(conversation, "No thanks.")
 StartConversation(conversation, NPC, Spawn, "Exactly! You should help me, then you can be famous too.")
end

function dlg4(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I can get your fragments.", "offer")
 StartConversation(conversation, NPC, Spawn, "Great! Get me one hundred bone fragments. That should be enough. Don't bring me anything fresh, either. I need brittle bones so I can grind them... just bring me back bones from anything undead, that should do the trick.")
end

function offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, BoneDust)
end


function complete(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, BoneDust, 2)
conversation = CreateConversation()
AddConversationOption(conversation, "Ok.")
AddConversationOption(conversation, "Heh... right.")
AddConversationOption(conversation, "I won't hold my breath.")
StartConversation(conversation, NPC, Spawn, "Excellent! Now I just need some mud! I think I can collect that myself! I am quite familiar with mud! Thanks for your help! If I ever get rich and famous I'll let you know!")
end


function respawn(NPC)

end