--[[
    Script Name    : SpawnScripts/Commonlands/GallaLentula.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 05:02:40
    Script Purpose : 
                   : 
--]]
local PlainOleDisease = 454


function spawn(NPC)
EmoteLoop(NPC)
end

function EmoteLoop (NPC)
                PlayAnimation(NPC, 12191)
                AddTimer(NPC, 15000, "EmoteLoop")
end


function hailed(NPC, Spawn)

    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1053.mp3", "", "", 0, 0, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1053.mp3", "", "", 0, 0, Spawn)
    else
    PlayFlavor(NPC,  "voiceover/english/voice_emotes/greetings/greetings_3_1053.mp3", "", "", 0, 0, Spawn)
    end
    if HasQuest(Spawn, PlainOleDisease) and GetQuestStep(Spawn, PlainOleDisease) == 6 then
    conversation = CreateConversation()
   AddConversationOption(conversation, "I am.  I have some medicine for you.", "dlg1")
   StartConversation(conversation, NPC, Spawn, "You must be the one helping the healer.")
   else
   PlayFlavor(NPC, "", "Can you not see the disease spreads?  Leave this place 'er your fate be sealed here, too!", "", 0, 0, Spawn)
end
   end
  

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 13061)
conversation = CreateConversation()
 AddConversationOption(conversation, "My pleasure.", "dlg2")
 AddConversationOption(conversation, "You're welcome.", "dlg2")
 StartConversation(conversation, NPC, Spawn, "Thank you.  That is sure to help.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Visions of sores and boils?", "dlg3")
 StartConversation(conversation, NPC, Spawn, "I must tell you, I am glad to be clear in the head, today.  Some days the sickness touches the brain, and that is always accompanied by visions.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Another sign of the gods upon this plane.", "dlg5")
  AddConversationOption(conversation, "Who is the Plaguebringer?", "Bertoxxulous")
 StartConversation(conversation, NPC, Spawn, "Yes.  A landscape of them and a giant figure.  I can only assume it to be that of the Plaguebringer.")
end

function Bertoxxulous(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayAnimation(NPC, 11882)
conversation = CreateConversation()
 AddConversationOption(conversation, "Another sign of the gods upon this plane.", "dlg5")
 StartConversation(conversation, NPC, Spawn, "The god, but you cannot say his true name... it will curse you.")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, PlainOleDisease, 6 )
conversation = CreateConversation()
 AddConversationOption(conversation, "Interesting.", "")
 StartConversation(conversation, NPC, Spawn, "Yes.  I can't help but think that there are some individuals that may delight in such news.  They may even try to glorify the Plaguebringer by spreading it further.  I can only hope they never find out about this.")
end

function respawn(NPC)
spawn(NPC)
end
