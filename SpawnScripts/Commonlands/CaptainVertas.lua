--[[
    Script Name    : SpawnScripts/Commonlands/CaptainVertas.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 01:01:54
    Script Purpose : 
                   : 
--]]

local FinishingtheNegotiations = 425
local TroubleAbout = 441
local MoreThenMeetsTheEye = 442
local ProvingYourWorth = 443
local ConfusionIsTheKey = 444
local OneFinalTask = 445

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
  if not HasQuest(Spawn, FinishingtheNegotiations) and not HasCompletedQuest(Spawn, FinishingtheNegotiations) then
  ProvidesQuest(NPC, FinishingtheNegotiations)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, FinishingtheNegotiations) then
  ProvidesQuest(NPC, TroubleAbout)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
  elseif HasCompletedQuest(Spawn, TroubleAbout) then
  ProvidesQuest(NPC, MoreThenMeetsTheEye)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, MoreThenMeetsTheEye) then
  ProvidesQuest(NPC, ProvingYourWorth)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, ProvingYourWorth) then
  ProvidesQuest(NPC, ConfusionIsTheKey)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
 elseif HasCompletedQuest(Spawn, ConfusionIsTheKey) then
  ProvidesQuest(NPC, OneFinalTask)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
    if GetQuestStep(Spawn, FinishingtheNegotiations) == 1 then
    SetStepComplete(Spawn, FinishingtheNegotiations, 1)
    end
    if not HasQuest(Spawn, TroubleAbout) and not HasCompletedQuest(Spawn, TroubleAbout) then
    Option1(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, TroubleAbout) and not HasCompletedQuest(Spawn, MoreThenMeetsTheEye) then
    Option6(NPC, Spawn)
    elseif GetQuestStep(Spawn, TroubleAbout) == 1 or GetQuestStep(Spawn, MoreThenMeetsTheEye) == 1 or GetQuestStep(Spawn, ProvingYourWorth) == 1 or GetQuestStep(Spawn, ProvingYourWorth) == 2 or GetQuestStep(Spawn, ProvingYourWorth) == 3 or GetQuestStep(Spawn, ProvingYourWorth) == 4 or GetQuestStep(Spawn, ConfusionIsTheKey) == 1 or GetQuestStep(Spawn, OneFinalTask) == 1 then
    QuestProgress(NPC, Spawn)
    elseif GetQuestStep(Spawn, TroubleAbout) == 2 or GetQuestStep(Spawn, MoreThenMeetsTheEye) == 2 or GetQuestStep(Spawn, ProvingYourWorth) == 5 or GetQuestStep(Spawn, ConfusionIsTheKey) == 2 or GetQuestStep(Spawn, OneFinalTask) == 2 then
    QuestFinish(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, TroubleAbout) and HasCompletedQuest(Spawn, MoreThenMeetsTheEye) and not HasCompletedQuest(Spawn, ProvingYourWorth) then
    Option10(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, TroubleAbout) and HasCompletedQuest(Spawn, MoreThenMeetsTheEye) and HasCompletedQuest(Spawn, ProvingYourWorth) and not HasCompletedQuest(Spawn, ConfusionIsTheKey) then
    Option15(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, TroubleAbout) and HasCompletedQuest(Spawn, MoreThenMeetsTheEye) and HasCompletedQuest(Spawn, ProvingYourWorth) and HasCompletedQuest(Spawn, ConfusionIsTheKey) and not HasCompletedQuest(Spawn, OneFinalTask) then
    Option19(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, TroubleAbout) and HasCompletedQuest(Spawn, MoreThenMeetsTheEye) and HasCompletedQuest(Spawn, ProvingYourWorth) and HasCompletedQuest(Spawn, ConfusionIsTheKey) and HasCompletedQuest(Spawn, OneFinalTask) then
    PlayFlavor(NPC, "", "Hail, good to see you again soldier!", "salute", 0, 0, Spawn)
end
   end


function Option1(NPC, Spawn)
     conversation = CreateConversation()
    AddConversationOption(conversation, "What does the job pay?", "Option2")
    AddConversationOption(conversation, "No, I don't have time right now.")
    StartConversation(conversation, NPC, Spawn, "Pah, the orcs and the dervish... Listen, the Freeport Militia requires your help. Will you do a service for the Militia?")  
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Whatever. I'll work for you. Getting paid is nice, though", "Option3")
	AddConversationOption(conversation, "Right, I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Pay... PAY? You insolent pig, you should be bowing down at my feet asking me for forgiveness. You ought to  be paying homage to the Overlord for all he has given you!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What will I do when I find him?", "Option4")
	AddConversationOption(conversation, "Find someone else. I don't have time.")
	StartConversation(conversation, NPC, Spawn, "You will be compensated for your time. There have been reports of a growing threat in the Commonlands. The militia requires you to travel to the west to the road beyond the druid ring to find the orc emissary.   Our reports tell us the emissary is the one who is passing stolen information to the Deathfist Empire.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will serve the Overlord.", "offer")
		AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Deal with him by any means necessary! Bring back to me any evidence you may find.")
end


function Option5(NPC, Spawn)
    SetStepComplete(Spawn, TroubleAbout, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Just doing my part for the Overlord.")
	StartConversation(conversation, NPC, Spawn, "Note? Indeed, this is interesting. You were right to bring this to me. Well done, soldier.")
end


function Option6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, sir, I did not.", "Option7")
	AddConversationOption(conversation, "Yes, I showed it to everyone. May I go now?")
	StartConversation(conversation, NPC, Spawn, "This note you brought me provided us with some good information. Did you show it to anyone else?")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No, sir, I am not.", "Option8")
	AddConversationOption(conversation, "Nope. I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Good. Very good to hear. Careful, kid, the dervishes have spies everywhere. Whatever you do, do not trust anyone because they might be a spy. Just last week, we had to put two people to death because we suspected them of being spies. Are you sure you're not a spy?")
end


 function Option8(NPC, Spawn) 
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Yes, sir. I will go now.", "offer2")
	AddConversationOption(conversation, "Maybe another time.")
	StartConversation(conversation, NPC, Spawn, "I guess not. You don't look like a spy. A spy wouldn't look so foolish. I need you to go scout out the dervish camps in the southwest area of The Commonlands. The note says they've set up camp in that area. Go there now and investigate it.")
end

 function Option9(NPC, Spawn)
    SetStepComplete(Spawn, MoreThenMeetsTheEye, 2)
  	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Captain.")
	StartConversation(conversation, NPC, Spawn, "I knew it! Excellent work, soldier. You have earned your first insignia. If you keep up the good work, you just might make something of yourself.")
end
   
 function Option10(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Prove my worth?", "Option11")
	AddConversationOption(conversation, "I have nothing to prove to you!")
	StartConversation(conversation, NPC, Spawn, "Oh good, you've returned. Thank you for the information you have gathered. You seem trustworthy, but you will now need to prove your worth to the Militia and to the Overlord of Freeport.")
end

 function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm worthy, and I'll prove it.", "Option12")
    AddConversationOption(conversation, "I don't like your attitude. Bye!")
	StartConversation(conversation, NPC, Spawn, "Yes, it is time you prove your worth to me... err... to Freeport and to the Overlord. Stop asking so many questions! I have a special mission for you.")
end

 function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ah, yes. About time we got back to the killing.", "Option13")
	AddConversationOption(conversation, "I'm sorry, but I have a prior engagement.")
	StartConversation(conversation, NPC, Spawn, "Good to hear. That is the attitude we want to see in young recruits. I need you to travel back to the camp to the west. There you will need to remove some of the dervishes from the land of the living. ")
end


 function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will do my best.", "offer3")
	StartConversation(conversation, NPC, Spawn, "Let me give you a list. Make sure to crush them thoroughly. Dervish heretics, outlanders, cutthroats, and thaumaturges. Go now! Hurry back.")
end

function Option14(NPC, Spawn)
    SetStepComplete(Spawn, ProvingYourWorth, 5)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks for the compliment, I guess")
	StartConversation(conversation, NPC, Spawn, "Really? Well, you may not be as useless as I first thought.")
end


function Option15(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That sounds amusing.", "Option16")
		AddConversationOption(conversation, "I am not a spy. Go get someone else.")
	StartConversation(conversation, NPC, Spawn, "For one so young, you have done well thus far. I still have more for you to do before I can let you go. Are you up to some undercover work?")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Kid? You're pushing it, Vertas.", "Option17")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "I like you, kid. What I need you to do is travel to their forward command camp and infiltrate their defenses. You will take this set of orders and switch them for their current list of orders.")
end


function Option17(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Just give me the orders already.", "offer4")
	AddConversationOption(conversation, "No, not this time. Bye!")
	StartConversation(conversation, NPC, Spawn, "Oh, sorry sport. Will you take this mission or not? It will be dangerous. Something I'm sure is right up your alley.  If it's not, well... we'll have to send the medics, I guess.")
end


function Option18(NPC, Spawn)
    SetStepComplete(Spawn, ConfusionIsTheKey, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks, Captain!")
	StartConversation(conversation, NPC, Spawn, "Very well done. Impressive, in fact. You have earned another rank on your insignia.")
end    

function Option19(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "That's good to hear.", "Option20")
	AddConversationOption(conversation, "Yeah, okay. I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "You've done well up to this point, cadet. The information you have gathered so far has helped our cause. Now it's time I give you a real mission.")
end

function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay. Who is my target?", "Option21")
	AddConversationOption(conversation, "Get someone else.")
	StartConversation(conversation, NPC, Spawn, "You are now required to perform an important task for the Militia. Because of the fake orders you delivered, we were able to pinpoint the highest ranking officer in this regiment. Now, you must go and eliminate him.")
end

function Option21(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Affirmative, sir.", "offer5")
	AddConversationOption(conversation, "Sounds like you should tighten security.")
	StartConversation(conversation, NPC, Spawn, "Shh...  Not so loud! I'll whisper it to you.  This type of information we do not speak in open areas. You never know who is listening. One spy hearing the wrong bit of information can ruin just about everything.")
end


function Option22(NPC, Spawn)
    SetStepComplete(Spawn, OneFinalTask, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will wear it with pride, sir.")
	StartConversation(conversation, NPC, Spawn, "I knew you had it in you, soldier. You have earned my highest respect. Take this insignia and wear it proudly as a symbol of your bravery as a member of the Militia.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TroubleAbout)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, MoreThenMeetsTheEye)
end


function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, ProvingYourWorth)
end


function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, ConfusionIsTheKey)
end


function offer5(NPC, Spawn)
OfferQuest(NPC, Spawn, OneFinalTask)
end

function QuestProgress(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Slime?")
	StartConversation(conversation, NPC, Spawn, "Nothing to see here, move along! Be on your way slime!")
end

function QuestFinish(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, TroubleAbout) == 2 then
	AddConversationOption(conversation, "I killed the emissary and he had this note on him. I thought you might find it interesting.", "Option5")
	elseif GetQuestStep(Spawn, MoreThenMeetsTheEye) == 2 then
	AddConversationOption(conversation, "I scouted the dervish camp, as you asked.", "Option9")
	elseif GetQuestStep(Spawn, ProvingYourWorth) == 5 then
	AddConversationOption(conversation, "I have removed some of the dervish insurgents, as you asked.", "Option14")
	elseif GetQuestStep(Spawn, ConfusionIsTheKey) == 2 then
	AddConversationOption(conversation, "I was able to switch the orders.", "Option18")
	elseif GetQuestStep(Spawn, OneFinalTask) == 2 then
	AddConversationOption(conversation, "Ralio has been eliminated, sir.", "Option22")
	end
	AddConversationOption(conversation, "Nothing right now.")
	StartConversation(conversation, NPC, Spawn, "Hail. What have you to report?")
end	


function respawn(NPC)

end

