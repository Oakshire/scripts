--[[
    Script Name    : SpawnScripts/Commonlands/BrandusLevine.lua
    Script Author  : Premierio015
    Script Date    : 2020.11.13 07:11:27
    Script Purpose : 
                   : 
--]]


local TheMysteriousMissingShipment = 421
local StartingtheNegotiations = 424
local FinishingtheNegotiations = 425
local  CollectingOnWhatIsEarned = 423


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange")    
end

function InRange(NPC, Spawn)
if not HasCompletedQuest(Spawn, TheMysteriousMissingShipment) then
ProvidesQuest(NPC, TheMysteriousMissingShipment)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, TheMysteriousMissingShipment) then
ProvidesQuest(NPC, StartingtheNegotiations)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, StartingtheNegotiations) then
ProvidesQuest(NPC, FinishingtheNegotiations)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    if not HasQuest(Spawn, TheMysteriousMissingShipment) and not HasCompletedQuest(Spawn, TheMysteriousMissingShipment) then
    if GetDeity(Spawn) ~= 1  then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "ponder", 0, 0, Spawn)
    AddConversationOption(conversation, "Another person who needs help?  Fine, what do you need?", "dlg1")
    AddConversationOption(conversation, "I'll help you only if it pays well.", "dlg3")
    AddConversationOption(conversation, "I would be happy to help you.", "dlg2")
    AddConversationOption(conversation, "You have to be kidding me.  No thanks, find another lackey, I'm busy with my own important things.")
    StartConversation(conversation, NPC, Spawn, "Hrmmm... You do have the look of a citizen about you.  You're not just random rabble from the streets.  I could use your help.")
    elseif GetDeity(Spawn) == 1 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "peer", 0, 0, Spawn)    
	AddConversationOption(conversation, "No, you have it wrong I'm a loyal Freeport citizen.", "qey_citizen")
	AddConversationOption(conversation, "I'm touring the countryside looking for evil to smite.  You wouldn't happen to be evil would you?", "qey_citizen2")
	AddConversationOption(conversation, "Yes, I'm from Qeynos, may I ask why you want to know?", "dlg5")
	AddConversationOption(conversation, "I think this conversation is over.")
	StartConversation(conversation, NPC, Spawn, "You don't look like you're from around here.  You have the stink of flower gardens about you.  What are you doing on this side of the world outlander?")
    end
    elseif HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 1 or GetQuestStep(Spawn, StartingtheNegotiations) <= 8 and HasQuest(Spawn, StartingtheNegotiations) or HasQuest(Spawn, FinishingtheNegotiations) and GetQuestStep(Spawn, FinishingtheNegotiations) == 1 or GetQuestStep(Spawn, FinishingtheNegotiations) == 3 or GetQuestStep(Spawn, FinishingtheNegotiations) == 4   then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "no", 0, 0, Spawn)
    AddConversationOption(conversation, "I'll be back when I'm done.")
    StartConversation(conversation, NPC, Spawn, "Look, I don't have time to sit around and talk about the weather.  We have an agreement and I expect you to live up to it.  Now don't come back unless you're done with what I asked.")
    elseif HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 3 then 
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Nethet had me running all over the place helping friends of his.", "dlg8")
    AddConversationOption(conversation, "Nethet had some information.  The dervish cutthroats stole your shipment and apparently have your sorcerer.", "dlg9")
    AddConversationOption(conversation, "I don't have any new information yet.")
    StartConversation(conversation, NPC, Spawn, "What did Nethet tell you?  That rat had better have known something or I'm back where I started.  That will not make me a happy man.")
    elseif HasCompletedQuest(Spawn, TheMysteriousMissingShipment) and not HasQuest(Spawn, StartingtheNegotiations) and not HasCompletedQuest(Spawn, StartingtheNegotiations)  then
    dlg9(NPC, Spawn)
    elseif GetQuestStep(Spawn, StartingtheNegotiations) == 9 then
    PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine020.mp3", "", "", 2488060767, 2522972725, Spawn)
    AddConversationOption(conversation, "You asked for a few dozen.  That is what I delivered.", "dlg14")
    AddConversationOption(conversation, "Not enough, there were still some left.", "dlg14")
    AddConversationOption(conversation, "I just want to get this over with and get what is due to me.", "dlg14")
    StartConversation(conversation, NPC, Spawn, "That was faster than I expected, you're quite the dangerous one aren't you?  Well done, I applaud you and your efforts in our partnership here.  Keep it up and we might get very rich together.  Tell me, how many did you get rid of before coming back?")
    elseif HasCompletedQuest(Spawn, TheMysteriousMissingShipment) and HasCompletedQuest(Spawn, StartingtheNegotiations) and not HasQuest(Spawn, FinishingtheNegotiations) and NotHasCompletedQuest(Spawn,  FinishingtheNegotiations)  then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "Yes, I'm ready to continue.", "dlg15")
    AddConversationOption(conversation, "Not right now, I'll return later.")
    StartConversation(conversation, NPC, Spawn, "Shall we continue our business venture, partner?")
    elseif GetQuestStep(Spawn,  FinishingtheNegotiations) == 2 then
    dlg18(NPC, Spawn)
    elseif GetQuestStep(Spawn,  FinishingtheNegotiations) == 6 then
    dlg22(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, CollectingOnWhatIsEarned) and not HasCompletedQuest(Spawn, StartingtheNegotiations) and not HasQuest(Spawn, StartingtheNegotiations)  then
    dlg25(NPC, Spawn)
   end    
end
   
   
function qey_citizen(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "A Freeport guard asking me for help, this is interesting, what do you need?", "dlg5")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "Sure you are, and I'm Antonia Bayle, pleasure to meet you friend citizen.  How about we both drop the act and I ask you for a little help?")
end

function qey_citizen2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Alright, I'm interested, what is it you need help with?", "dlg5")
	AddConversationOption(conversation, "I'll never help a guard from Freeport!")
	StartConversation(conversation, NPC, Spawn, "I wish you luck with that, but no, I'm not evil and smiting me wouldn't get you any richer now would it?  Look, I'm just wanting a little help here or is that too much to ask of someone from that city of dancing fay and sugar cookies?")
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

function dlg8(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thanks for the sympathy.  Yes, he had information that the dervish cutthroats stole your shipment and your sorcerer.", "dlg9")
  AddConversationOption(conversation, "With that tone of voice, find the shipment yourself, I'm through with this.")
  StartConversation(conversation, NPC, Spawn, "Don't tell me your whining stories about what other people had you do.  He could have made you shovel pig dung for all I care, did you get the information or not?")
end





function dlg9(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  if HasQuest(Spawn, TheMysteriousMissingShipment) and GetQuestStep(Spawn, TheMysteriousMissingShipment) == 3 then
  SetStepComplete(Spawn, TheMysteriousMissingShipment, 3)
  end
  conversation = CreateConversation()
  AddConversationOption(conversation, "My pleasure, you'll hear their screams from here.", "dlg10")
  AddConversationOption(conversation, "Now you want me to kill people for you?  What's in it for me?", "dlg11")
  AddConversationOption(conversation, "I know you're selling refugees back to the Far Seas Trading Company.", "dlg12")
  AddConversationOption(conversation, "I'm not killing anyone, do it yourself I'm done with you.")
  StartConversation(conversation, NPC, Spawn, "The dervishes stole it!?  You can't be serious.  Argh!!  I'm tired of those lowlifes messing with my business.  I need you to do me a favor and kill a few dozen of them.")
end 

function dlg10(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine015.mp3", "", "", 1439836789, 4202652757, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Alright. I'll be back when I'm done.", "offer2")
  AddConversationOption(conversation, "Not right now.")
  StartConversation(conversation, NPC, Spawn, "That's exactly what I wanted to hear.  Once you've thinned out the number of the dervishes for me I have a feeling they might be willing to negotiate a deal afterwards.  I want them to learn a lesson in fouling my business.  You can find one of the larger encampments on the far Western end of the Commonlands.")
end


function dlg11(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "When you put it that way how can I refuse?", "dlg10")
  AddConversationOption(conversation, "Forget it, I'm not interested.")
  StartConversation(conversation, NPC, Spawn, "Oh, you'll be rewarded for this I assure you.  I want the dervishes to pay and I'm willing to let you in on some of my profits if you help me out with this.")
end


function dlg12(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine018.mp3", "", "", 4047037445, 2150242862, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "How about a few extra coins in my pocket?", "dlg13")
  AddConversationOption(conversation, "Nothing, I just found it interesting and fairly clever.  I want in on the profits though.")
  StartConversation(conversation, NPC, Spawn, "How did.... Nethet ... curse that rat, he finds out way more than he should.  Alright, what do you want to keep quiet about it?")
end
 
function dlg13(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine019.mp3", "", "", 2588958758, 3569990697, Spawn)
  conversation = CreateConversation()
  AddConversationOption(conversation, "Thank you Brandus, I knew you'd see things my way.", "dlg25")
  AddConversationOption(conversation, "That's more like it.  I'll be back soon.")
  StartConversation(conversation, NPC, Spawn, "I can do that if it'll keep you quiet.  I don't have any coin on me here though, bad idea walking around with a lot of money on the docks you understand.  Go to the Crossroads, I have a business partner named Anders Blackhammer who can give you the profits from our last venture.  Tell him that I sent you.")
end

function dlg14(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, StartingtheNegotiations, 9)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine021.mp3", "", "", 2051967454, 3084787135, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Thanks, I'll be back soon to continue our ''negotiations'' with the dervishes.")
StartConversation(conversation, NPC, Spawn, "I understand what you mean perfectly.  Here is the first of your profits, if you keep doing such excellent work there is a lot more where this came from.")
end

-- FINISHING THE NEGOTIATIONS PART

function dlg15(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "And you want me to find out which is the truth?", "dlg16")
AddConversationOption(conversation, "I don't really have time for this right now.")
StartConversation(conversation, NPC, Spawn, "Good.  The dervishes are still not willing to negotiate.  I'm guessing they have either become more foolish than normal or they no longer have my shipment.")
end

function dlg16(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "So, I should go speak with this Captain Vertas?", "dlg17")
AddConversationOption(conversation, "I thought this would be something interesting, forget it.")
StartConversation(conversation, NPC, Spawn, "Yes, but I have another source that we might be able to use to our advantage.  Another militia guard by the name of Captain Vertas is stationed out in the Crossroads.  He has no love for the dervishes and keeps a close eye on them.")
end

function dlg17(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "I'll be back when I learn anything.", "offer3")
StartConversation(conversation, NPC, Spawn, "Yes, see what information he has on the dervishes and what we might be able to use.")
end


function dlg18(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3", "", "", 0, 0, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Yes I have.  I learned the dervishes are working with the Deathfist orcs.", "dlg19")
AddConversationOption(conversation, "No, not yet, I'll be back when I have.")
StartConversation(conversation, NPC, Spawn, "Have you spoken with captain Vertas?")
end

function dlg19(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine030.mp3", "", "", 782844318, 2866426514, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "It would be my pleasure.", "dlg20")
AddConversationOption(conversation, "Only if you can continue to pay for my expensive services.", "dlg21")
AddConversationOption(conversation, "I don't think so.  I'm not really the enforcer type.")
StartConversation(conversation, NPC, Spawn, "The Deathfist?  You cannot be serious.  Bah!  That's probably where my shipment went, there's no way I'm getting that back by now.  The orcs also have to pay for this, they had to know that shipment was mine.  Do you mind playing enforcer again?")
end

function dlg20(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, FinishingtheNegotiations, 2)
conversation = CreateConversation()
AddConversationOption(conversation, "I'll return as soon as I find anything interesting from these orc runners.")
StartConversation(conversation, NPC, Spawn, "Good, then I need you to find out what the connection is with with dervishes and the orcs.  If you watch carefully you can sometimes see orc runners near the encampments in the Southern part of the Commonlands.  I want the information they might be carrying.  Let me know what you find.")
end


function dlg21(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Then we have a deal.", "dlg20")
AddConversationOption(conversation, "On second thought, I think I'm done with this arrangement.")
StartConversation(conversation, NPC, Spawn, "Of course, of course.  We have a business deal and I'm willing to pay what is necessary to have this situation resolved as soon as possible.")
end

function dlg22(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine033.mp3", "", "", 1996105356, 11511501, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Here is the note I intercepted and had to decode.", "dlg23")
AddConversationOption(conversation, "Enough to know I really dislike the Bloodskulls.  And I found this note.", "dlg23")
AddConversationOption(conversation, "Nothing yet.  I'll be back later.")
StartConversation(conversation, NPC, Spawn, "It's good to see you again.  What did you learn from the orcs?")
end


function dlg23(NPC, Spawn)
FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine034.mp3", "", "", 1083737725, 3622378931, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "What about my reward for that information?", "dlg24")
AddConversationOption(conversation, "I'm getting out of this now, goodbye.")
StartConversation(conversation, NPC, Spawn, "Hrmmm.  So they are having a meeting are they?  Let me look into this and verify it isn't a trap.  Come back when you're ready to crash their meeting.")
end

function dlg24(NPC, Spawn)
FaceTarget(NPC, Spawn)
SetStepComplete(Spawn, FinishingtheNegotiations, 6)
PlayFlavor(NPC, "brandus_levine/commonlands/quests/brandus_levine/brandus_levine035.mp3", "", "", 2606991312, 3918213798, Spawn)
conversation = CreateConversation()
AddConversationOption(conversation, "Thank you.  It's a pleasure doing business with you.")
StartConversation(conversation, NPC, Spawn, "Ah yes, your reward.  Here it is.  Remember that I have more work and more rewards when you return.")
end

function dlg25(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
	AddConversationOption(conversation, "Anders attacked me when I approached him!  I'm going to make you take a long walk off this short dock!", "dlg26")
	AddConversationOption(conversation, "I suppose I deserved that.  Can we forget about it and get back to business?", "dlg10")
	StartConversation(conversation, NPC, Spawn, "You return?  I take it your conversation with Anders went better for you than I thought.")
end

function dlg26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Clearly.")
	StartConversation(conversation, NPC, Spawn, "I can't say that's wise.  You lay a finger on me and you'll never see another sunrise if you sleep in Freeport again, understand?")
end



-- QUEST OFFER FUNCTIONS

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, StartingtheNegotiations)
end


function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, FinishingtheNegotiations)
end

function offer1(NPC, Spawn)
OfferQuest(NPC, Spawn, TheMysteriousMissingShipment)
end

function offer4(NPC, Spawn)
    
end

function respawn(NPC)
         spawn(NPC)
end
