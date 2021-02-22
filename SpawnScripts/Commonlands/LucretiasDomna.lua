--[[
    Script Name    : SpawnScripts/Commonlands/LucretiasDomna.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 06:02:50
    Script Purpose : 
                   : 
--]]

local PlainOleDisease = 454

function spawn(NPC)
EmoteLoop(NPC)
end

function EmoteLoop (NPC)
        local choice = math.random(1,3)
        local timer = math.random(2500,3500)
  
        if choice == 1 then
                PlayAnimation(NPC, 11046)
                AddTimer(NPC, timer, "EmoteLoop")
        elseif choice == 2 then
                PlayAnimation(NPC, 2623)
                AddTimer(NPC, timer, "EmoteLoop")
        else
               PlayAnimation(NPC, 152)
               AddTimer(NPC, timer, "EmoteLoop")
        end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3", "", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1011.mp3", "", "", 0, 0, Spawn)
    end
    if GetQuestStep(Spawn,  PlainOleDisease) == 8 then
    conversation = CreateConversation()
    AddConversationOption(conversation, "I have a note for you from Healer Hanif.", "dlg1")
    AddConversationOption(conversation, "How is it that you are safe from the undead here?", "dlg2")
    StartConversation(conversation, NPC, Spawn, "You are disturbing me.  Be gone before I make you a walking cadaver!")
    elseif GetQuestStep(Spawn, PlainOleDisease) == 9 then
     conversation = CreateConversation()
     AddConversationOption(conversation, "Not yet.  I'll get the sinew for you.")
     StartConversation(conversation, NPC, Spawn, "Have you the zombie sinew for the goods?")
     elseif GetQuestStep(Spawn, PlainOleDisease ) == 10 then
     SetStepComplete(Spawn, PlainOleDisease, 10)
     conversation = CreateConversation()
     AddConversationOption(conversation, "Gross.")
     AddConversationOption(conversation, "Thank you.  I think.")
     StartConversation(conversation, NPC, Spawn, "That will help, and now as promised... Here is the pusling flesh and a scroll detailing known poxes originating in the Bubonian Caves.")
     elseif GetQuestStep(Spawn, PlainOleDisease) == 11 or HasCompletedQuest(Spawn, PlainOleDisease) then
     conversation = CreateConversation()
       AddConversationOption(conversation, "Yeah, yeah... You're lucky I'm in a hurry.")
       StartConversation(conversation, NPC, Spawn, "I gave you the flesh and scroll that Hanif required.  Now be gone!")
end
    end


function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I must?", "dlg3")
 AddConversationOption(conversation, "What do you want?", "dlg4")
 StartConversation(conversation, NPC, Spawn, "Oh?  For him, I will allow an interruption.  His findings are interesting, and worthy of my house's assistance.  But you must help me, too.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Must be nice.  I have a note for you from Healer Hanif.", "dlg1")
 StartConversation(conversation, NPC, Spawn, "They do not see me as a threat due to the aura I cast about me.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "What do you want?", "dlg4")
 StartConversation(conversation, NPC, Spawn, "If you want the items for Hanif quickly, you do.")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
 SetStepComplete(Spawn, PlainOleDisease, 8 )
 conversation = CreateConversation()
 AddConversationOption(conversation, "I'll do some hunting for you.", "dlg5")
 StartConversation(conversation, NPC, Spawn, "I require some parts from the undead here for my studies.")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "Ha ha.")
 StartConversation(conversation, NPC, Spawn, "Good.  Some zombie sinew is just what the good doctor ordered!  Ha ha ha!")
end

function respawn(NPC)
spawn(NPC)
end

