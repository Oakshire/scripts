--[[
    Script Name    : SpawnScripts/Commonlands/BrandusLevine.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.13 07:11:27
    Script Purpose : 
                   : 
--]]


local TheMysteriousMissingShipment = 421

function spawn(NPC)
ProvidesQuest(NPC, TheMysteriousMissingShipment)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, TheMysteriousMissingShipment) and not HasCompletedQuest(Spawn, TheMysteriousMissingShipment) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "ponder", 0, 0, Spawn)
    AddConversationOption(conversation, "Another person who needs help?  Fine, what do you need?", "dlg1")
    AddConversationOption(conversation, "I'll help you only if it pays well.", "dlg3")
    AddConversationOption(conversation, "I would be happy to help you.", "dlg2")
    AddConversationOption(conversation, "You have to be kidding me.  No thanks, find another lackey, I'm busy with my own important things.")
    StartConversation(conversation, NPC, Spawn, "Hrmmm... You do have the look of a citizen about you.  You're not just random rabble from the streets.  I could use your help.")
    elseif HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment, 1) then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "no", 0, 0, Spawn)
    AddConversationOption(conversation, "I'll be back when I'm done.")
    StartConversation(conversation, NPC, Spawn, "Look, I don't have time to sit around and talk about the weather.  We have an agreement and I expect you to live up to it.  Now don't come back unless you're done with what I asked.")
end
   end

function dlg1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine002.mp3", "", "ponder", 262730364, 1884373532, Spawn)
 AddConversationOption(conversation, "Get to the point already.", "dlg5")
 AddConversationOption(conversation, "I'm assuming that's a threat, I'll pretend I didn't hear it.  What did you have in mind?", "dlg5")
 AddConversationOption(conversation, "Obscurity is my middle name.  How about I just obscure myself out of this conversation.")
 StartConversation(conversation, NPC, Spawn, "You do realize I can find someone else.  And maybe you'll just fade into obscurity.  But, since you've at least shown some interest then perhaps I can use you.")
end


function dlg2(NPC, Spawn)
FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine004.mp3", "", "", 305934204, 2024549973, Spawn)
AddConversationOption(conversation, "So, what is it you needed such dire help on?", "dlg5")
AddConversationOption(conversation, "Citizen?  Do you even know who I am?  I have no time for such arrogance.")
StartConversation(conversation, NPC, Spawn, "Good, good, I like to see such eagerness in a citizen of Freeport.")
end

function dlg4(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
AddConversationOption(conversation, "And how would you expect me to find it if I have no idea what it is?", "dlg7")
AddConversationOption(conversation, "On second thought, if you're not going to tell me what I need to know I think I'll just leave.")
StartConversation(conversation, NPC, Spawn, "That little bit of information you don't need to know.  All I'm asking for is that you find my missing cargo.")
end

function dlg3(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine003.mp3", "", "", 324578518, 1128092434, Spawn) 
AddConversationOption(conversation, "Reward. I like the sound of that.  What did you have in mind?", "dlg5")
AddConversationOption(conversation, "You don't look like you could afford my standard fee.  I think I'll go look for adventure elsewhere.")
StartConversation(conversation, NPC, Spawn, "Oh, it pays well, very well indeed.  I don't ask simple things but I reward loyal service.")
end

function dlg5(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine005.mp3", "", "", 3809469840, 3688681939, Spawn)
AddConversationOption(conversation, "What was in this shipment of yours that's so important?", "dlg4")
AddConversationOption(conversation, "I think I can do that, where should I start looking?", "dlg7")
AddConversationOption(conversation, "I thought this would be interesting.  Forget it, this sounds like another waste of my precious time.")
StartConversation(conversation, NPC, Spawn, "I've been waiting on a very special shipment to arrive.  It was due here three days ago and there has been no sign of the individuals who were supposed to bring it.  I've had to send the boat to the Freeport docks and every day it sits there it's costing me money.  I need you to find out what happened to my shipment or why they are so late.")
end


function dlg7(NPC, Spawn)
FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine007.mp3", "", "", 3066832295, 2286961802, Spawn)
AddConversationOption(conversation, "I'll start with him then.", "offer1")
StartConversation(conversation, NPC, Spawn, "Fine, if I have to hold your hand through everything.  You might start with Nethet near the main gates of Freeport.  He watches most of who enter or leave the city.  If anyone knows anything about where my missing cargo went it would likely be him.")
end




function offer1(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMysteriousMissingShipment)
end

function respawn(NPC)

end
