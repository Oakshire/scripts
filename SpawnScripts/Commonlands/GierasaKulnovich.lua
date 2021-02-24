--[[
    Script Name    : SpawnScripts/Commonlands/GierasaKulnovich.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.21 09:02:50
    Script Purpose : 
                   : 
--]]

local ZarvonnsLegacy = 446

function spawn(NPC)
EmoteLoop(NPC)
end

function EmoteLoop (NPC)
                PlayAnimation(NPC, 12191)
                AddTimer(NPC, 15000, "EmoteLoop")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gierasa_kulnovich/commonlands/qst_gierasakulnovich.mp3", "", "", 1876580566, 479049671, Spawn)
    conversation = CreateConversation()
     AddConversationOption(conversation, "Who are you?", "whoareyou")
       if GetQuestStep(Spawn, ZarvonnsLegacy) == 1  then
       AddConversationOption(conversation, "What information do you have regarding the Mad Mage, Zarvonn?", "dlg1")
       end
      AddConversationOption(conversation, "No, you crazy old hag!")
       StartConversation(conversation, NPC, Spawn, "Come in, child, come in.  You must be so tired from your journeys.  Come, rest here.")
end

function whoareyou(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "What parts?", "where")
 AddConversationOption(conversation, "Why have you been exiled?", "exiled")
 StartConversation(conversation, NPC, Spawn, "Oh, I am just an old woman who has seen far too many years.  My companions and I  travel these lands.  We have been exiled from Freeport, and don't really like to settle in one spot, you know.  Too many parts of the world left to see.")
end
 
function exiled(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Like where?", "where")
 StartConversation(conversation, NPC, Spawn, "This is a leper colony, child.  The sickness is why we are not welcome within the city.  Just as well... I have always been a nomad, and there are so many places outside of Freeport to see.")
end

function where(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "Ok.")
 StartConversation(conversation, NPC, Spawn, "Oh, there are many places left to visit, child.  The lands are not all gone, they are just a little hard to find.  You'll see, my dear.  I have a good feeling you'll find your way to them.")
end

function dlg1(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "What are you talking about?", "dlg2")
 StartConversation(conversation, NPC, Spawn, "Yes... the cards said you would come to us.  They said that time will no longer keep what is hidden from the eyes of the seeker.  They also said that death will be ascendant, but not for whom.  Yes... yes, you are the one.")
end

function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
 AddConversationOption(conversation, "I have no idea what you're talking about!", "dlg3")
 StartConversation(conversation, NPC, Spawn, "I cannot deny the fate that the cards show me, errant one.  This is a world of worms, and death is but one of its kings.  You will find one who pledges her fealty to a single incarnation of this ruler, yet she seeks another incarnation instead.  Seek out the tower of the angry one and speak with the new house-souls.")
end


function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, ZarvonnsLegacy, 1)
conversation = CreateConversation()
 AddConversationOption(conversation, "So what you're saying is that I should talk to a woman in his tower, to the southwest. Got it.")
 StartConversation(conversation, NPC, Spawn, "Even though Zarvonn's tower is no longer here, it is easily found.  Within its spire you will find a woman who has many masters, but only acknowledges one.  Tell her that if she seeks Zarvonn's realm, she will surely find it.  She can see it evidenced within the siege of time.  Head to the south and head to the west and you will find the finger pointing to where Zarvonn exists... or perhaps... it doesn't.")
end


function respawn(NPC)
spawn(NPC)
end

