--[[
    Script Name    : SpawnScripts/Commonlands/Nethet.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.16 09:11:28
    Script Purpose : 
                   : 
--]]

local TheMysteriousMissingShipment = 421
local AFriendInNeed = 422 

function spawn(NPC)
ProvidesQuest(NPC, AFriendInNeed)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment, 1) then
    PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet001.mp3", "", "", 2714946193, 3558471860, Spawn)
    AddConversationOption(conversation, "Brandus sent me to talk to you about a missing shipment of his.  Do you know anything about it?", "dlg1")
    AddConversationOption(conversation, "Nothing right now, Nethet.")
    StartConversation(conversation, NPC, Spawn, "Yous comes to Nethet to speaks of things yes?  What's it that you wants to knows?")
    elseif HasQuest(Spawn, AFriendInNeed) and GetQuestStep(Spawn, AFriendInNeed) < 3 then
    PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet007.mp3", "", "", 3445852647, 1618945566, Spawn)
    AddConversationOption(conversation, "Nothing yet, I'll be back when I find him.")
    StartConversation(conversation, NPC, Spawn, "Yous is back.  Whats did you learn of my friend?")
   end 
end

function dlg1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   SetStepComplete(Spawn, TheMysteriousMissingShipment, 1)
   conversation = CreateConversation()
   PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet002.mp3", "", "", 1863394625, 442531621 , Spawn)
   AddConversationOption(conversation, "Who do you think took the cargo?  Brandus said you might know.", "dlg2")
   AddConversationOption(conversation, "Who was he dealing with?  That might give me a starting point.", "dlg3")
   AddConversationOption(conversation, "I've had enough of this, I'm not getting involved anymore.")
   StartConversation(conversation, NPC, Spawn, "He's lookings for his precious cargoes now is he?  That's what one gets for dealings with others than ratonga, we is always reliables, yes?")
end


function dlg2(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet003.mp3", "", "", 625310590, 2568881084, Spawn)
 AddConversationOption(conversation, "How would you find these things out?", "dlg3")
 AddConversationOption(conversation, "I've heard enough, I'm not getting involved in this.")
 StartConversation(conversation, NPC, Spawn, "I don't knows... yet, but I cans finds out I promises.")
end


function dlg3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   PlayFlavor(NPC, "nethet/commonlands/quests/nethet/nethet004.mp3", "", "", 2219814499, 371999800, Spawn)
   AddConversationOption(conversation, "Sure rat, what did you need from me?", "dlg4")
   AddConversationOption(conversation, "I can help you Nethet, what kind of favor are you talking about?", "dlg4")
   AddConversationOption(conversation, "No thanks, I'm leaving.")
   StartConversation(conversation, NPC, Spawn, "I can't just gives my secrets aways for free now cans I?   Maybe if you do me a favors I helps try to find out for you hrm?  We have a deals?")
end


function dlg4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   AddConversationOption(conversation, "Now I understand what you're getting at.  I'll go help this friend of yours.  Where can I find him?", "dlg5")
   AddConversationOption(conversation, "I'm not going to be used like this, forget it rat.")
   StartConversation(conversation, NPC, Spawn, "I has a friends whos in troubles with the Blackshield smugglers.  He went to speaks with thems but I'm not sures they wanted to chat.  I'm thinkin' he's needin' a hand from someones likes you.  If you helps him I'll be thinkin of where Brandus' cargo might be.")
end

function dlg5(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 AddConversationOption(conversation, "I will look for your friend, you had better have the information when I get back.",  "offer")
 AddConversationOption(conversation, "It's my pleasure Nethet.", "offer")
 AddConversationOption(conversation, "Whatever rat, I'll be back as soon as I find your friend.", "offer")
 StartConversation(conversation, NPC, Spawn, "He wents north along the coast.  He says the Blackshield have their own dock to do their business just northwest of the flying griffin tower.  Makes sure you come in from the land, they watches the docks carefully and its dangerous.  Look for anothers ratonga, his names is Nikora.")
end

   

function offer(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 OfferQuest(NPC, Spawn, AFriendInNeed)
end


function respawn(NPC)
 spawn(NPC)
end

