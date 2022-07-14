--[[
	Script Name		:	(SpawnScripts/Antonica/HaddekVimki.lua
	Script Purpose	:	Haddek Vimki dialogue script
	Script Author	:	Jabantiz, premierio015
	Script Date		:	08/29/2019 - 04.09.2021
	Script Notes	:  
--]]


local RunningOutOfBeer = 5352
local OuchMyHead = 5353
local RiseAndShineWine = 5354
local PracticalJokeOnBlarton = 5355

function spawn(NPC)
	ProvidesQuest(NPC, RunningOutOfBeer)   
	ProvidesQuest(NPC, OuchMyHead)   
	ProvidesQuest(NPC, RiseAndShineWine)   
	ProvidesQuest(NPC, PracticalJokeOnBlarton)   
     SetPlayerProximityFunction(NPC, 10, "InRange", Spawn) 
end

function InRange(NPC, Spawn)
if not HasCompletedQuest(Spawn, RunningOutOfBeer) then
ProvidesQuest(NPC, RunningOutOfBeer)
elseif HasCompletedQuest(Spawn, RunningOutOfBeer) then
ProvidesQuest(NPC, OuchMyHead)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif  HasCompletedQuest(Spawn, OuchMyHead) then
ProvidesQuest(NPC, RiseAndShineWine)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif  HasCompletedQuest(Spawn, RiseAndShineWine) then
ProvidesQuest(NPC, PracticalJokeOnBlarton)
  SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
   	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1060.mp3", "", "", 0, 0, Spawn)
   	elseif choice == 2 then
   	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1060.mp3", "", "", 0, 0, Spawn)
   	elseif choice == 3 then
   	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1060.mp3", "", "", 0, 0, Spawn)
   	elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", "", "", 0, 0, Spawn)
    end
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn, RunningOutOfBeer) and not HasCompletedQuest(Spawn, RunningOutOfBeer) then
    Option1(NPC, Spawn)
    elseif GetQuestStep(Spawn, RunningOutOfBeer) == 1 or GetQuestStep(Spawn, OuchMyHead) == 1 or GetQuestStep(Spawn, OuchMyHead) == 2 or GetQuestStep(Spawn, OuchMyHead) == 3 or GetQuestStep(Spawn, RiseAndShineWine) == 1 or GetQuestStep(Spawn, PracticalJokeOnBlarton) == 1  then
    PlayFlavor(NPC, "", "Hruh? What? I thought I told you what I wanted from you. If you're not going to take care of it I'm going to have old Aroof here take care of... Well... it don't look like he is going to be taking care of much... but when I tell him tomorrow, he will be awful angry!", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn, RunningOutOfBeer) == 2 then
    Option7(NPC, Spawn)  -- BETWEEN QUEST-STEPS PROGRESS
    elseif HasCompletedQuest(Spawn, RunningOutOfBeer) and not HasQuest(Spawn, OuchMyHead) and not HasCompletedQuest(Spawn, OuchMyHead) then
    Option8(NPC, Spawn)
    elseif  GetQuestStep(Spawn, OuchMyHead) == 4 then
    Option10(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, RunningOutOfBeer) and HasCompletedQuest(Spawn, OuchMyHead) and not HasQuest(Spawn, RiseAndShineWine) and not HasCompletedQuest(Spawn, RiseAndShineWine) then
    Option11(NPC, Spawn)
    elseif GetQuestStep(Spawn, RiseAndShineWine) == 2 then
    Option15(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, RunningOutOfBeer) and HasCompletedQuest(Spawn, OuchMyHead) and HasCompletedQuest(Spawn, RiseAndShineWine) and not HasQuest(Spawn, PracticalJokeOnBlarton) and not HasCompletedQuest(Spawn, PracticalJokeOnBlarton) then
    Option16(NPC, Spawn)
    elseif GetQuestStep(Spawn, PracticalJokeOnBlarton) == 2 then
    Option19(NPC, Spawn)
    elseif HasCompletedQuest(Spawn, RunningOutOfBeer) and HasCompletedQuest(Spawn, OuchMyHead) and HasCompletedQuest(Spawn, RiseAndShineWine) and  HasCompletedQuest(Spawn, PracticalJokeOnBlarton) then
    Quest_Completed(NPC, Spawn)
end
   end


function Option1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, what do you need from me?", "Option2")
		AddConversationOption(conversation, "Why don't you make yourself useful?!")
	StartConversation(conversation, NPC, Spawn, "So, then I said, \"That's what the Gnome is for!\"  Wraahaahaa! Huh? What? If you're goin' to come over here and badger me, why don't you make yourself useful?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm looking for some work.", "Option3")
	AddConversationOption(conversation, "I think I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Ahhh, Aroof... He's a good chap, but he's about as smart as a trog. Me an' the big guy here are in the middle of something. What do you want? ")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "And?", "Option4")
	AddConversationOption(conversation, "Okay, I have had enough. Bye.")
	StartConversation(conversation, NPC, Spawn, "Ya see, twinkletoes over here has had quite a bit to drink. The big oaf isn't as coordinated as the barkeep would like him to be. Seems last time I sent him up to get us another round, he tripped over a ratonga sitting by the bar.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay. So?", "Option5")
	AddConversationOption(conversation, "Umm, never mind.")
	StartConversation(conversation, NPC, Spawn, "... And, it turns out the ratonga had what you might call... financial responsibilities to take care of for the proprietor. Looks like the little fur ball won't be back for quite some time! Hraahaha! The barkeep will throw us both out if the big guy over here comes stumbling upstairs one more time. Besides, I don't think he's feeling up to going anywhere right now.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, get on with it.", "Option6")
	AddConversationOption(conversation, "Uphill? I think I've heard this one.")
	StartConversation(conversation, NPC, Spawn, "You're an impatient one, aren't you? You need to slow down a bit! Sit back, grab an ale, and enjoy the sights. Get up you drunken fool! You know, when I was a young pup like yourself I used to be all over Norrath fighting Drakota... with my bare hands.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure, I will be right back", "offer")
	AddConversationOption(conversation, "No, it looks like you two have had enough.")
	StartConversation(conversation, NPC, Spawn, "And look where it got me. Sitting here with a drunken fool who can't keep both feet on the ground, and talking to a whelp like you. Where was I?  Aye, I want a drink! Why don't you grab the big guy and I an ale.")
end


function Option7(NPC, Spawn)
    SetStepComplete(Spawn, RunningOutOfBeer, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Great, thank you.")
	StartConversation(conversation, NPC, Spawn, "Ha! Great! Why don't you take this? It doesn't look like old Aroof will be needing it. Hmph!")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay.", "Option9")
	AddConversationOption(conversation, "I think I have had enough.")
	StartConversation(conversation, NPC, Spawn, "Shhhh! Do you have to be so loud? Look, here's what I need from you. I think that Aroof over here has a bit of a hangover. Ha! Think you can help him out a bit? I would do it, but I've got to stay around and help the poor guy out.")
end

function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay. Go on.", "offer2")
	AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "Why don't you be a pal and grab my friend here what I, er... he needs to get rid of this horrendous, terrible, splitting headache. But, bring it to me. I need to give it a taste first before he tries it. I'm a good friend, ya know. I've got to make sure he'll like it.")
end

function Option10(NPC, Spawn)
    SetStepComplete(Spawn, OuchMyHead, 4)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()    
    AddConversationOption(conversation, "Yeah, you do that.")
	StartConversation(conversation, NPC, Spawn, "Ahhh. That's some wretched stuff right there. Aroof isn't going to tolerate slop like this. Looks like I will have to just drink it for him.")
end


function Option11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()      
	AddConversationOption(conversation, "Okay, back to what you were saying.", "Option12")
	  AddConversationOption(conversation, "I was just thinking the same thing.")
	StartConversation(conversation, NPC, Spawn, "Hey there! Good to see you again! Care to do an old dwarf another favor? I'm making something special, but I need some help getting a few of the ingredients. But, you see, I'm not quite as young as I used to be, and I need a bit of help. Sometimes I wonder why I waste my time with this fool.")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, why not?", "Option13")
	AddConversationOption(conversation, "You're nuts!")
	StartConversation(conversation, NPC, Spawn, "Right, right. You see, I have this, let's call him, \"friend.\"  This \"friend\" has been giving me and Aroof here a hard time. I got something in mind for him, and I need your help.")
end


function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I'll help you out. ", "Option14")
	AddConversationOption(conversation, "No, I don't think that's a good idea.")
	StartConversation(conversation, NPC, Spawn, "You see, Blarton put something in our drinks, and whatever it is has got big, tough Aroof over here in quite a mess. We need to get back at Blarton! I got this idea for a wine... something that will really knock his socks off.")
end


function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No problem.", "offer3")
	AddConversationOption(conversation, "Umm, I don't think so. ")
	StartConversation(conversation, NPC, Spawn, "Good, good! I need to get some goo from the risen protectors. Go pick me up some of that stuff an' I'll make it worth your while.")
end

function Option15(NPC, Spawn)
    SetStepComplete(Spawn, RiseAndShineWine, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   	AddConversationOption(conversation, "I am sure he is.")
	StartConversation(conversation, NPC, Spawn, "Great! This is just what I needed! I hope it wasn't too much trouble for you. Ha! I am sure you did fine. This will do rather nicely... Blarton is in for a treat!")
end    

function Option16(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I suppose.", "Option17")
	AddConversationOption(conversation, "I don't think so.")
	StartConversation(conversation, NPC, Spawn, "This is going to be the best bottle of Rise and Shine Wine yet! I've really outdone myself this time. Hey, you think you can help me out one last time? I could really use the help, and Aroof here can barely lift his ale, let alone do what I have in mind. ")
end


function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Okay, so what do you want?", "Option18")
		AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Blarton an' I go way back. I am looking to put a little excitement in his day. Go on over to Windstalker Village and give him this here wine. After he gets some of this stuff in him, he'll be up playing drinking games with me an' Aroof for the next three seasons! Ha!")
end


function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll do it.", "offer4")
	AddConversationOption(conversation, "Not a chance.")
	StartConversation(conversation, NPC, Spawn, "Go find Blarton, and give him this drink. Don't just go over there and try to pour it down his throat either. You need to be delicate about it. Don't raise any suspicions. Blarton is not the smartest chap in the world, but if he thinks you're up to no good, it will spoil the whole prank. When you're done, come back here and let me know. Blarton will probably be here before you are if he drinks that stuff!  Ha!")
end

function Option19(NPC, Spawn)
    SetStepComplete(Spawn, PracticalJokeOnBlarton, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   	AddConversationOption(conversation, "Yeah, I think I will be leaving then.")
	StartConversation(conversation, NPC, Spawn, "If only I could have seen the look on that Blarton's face when he took a drink of that wine! Great job! Thanks for your services. Now, unless you're going to grab us another ale, you can get out of here.")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, RunningOutOfBeer)
end

function offer2(NPC, Spawn)
OfferQuest(NPC, Spawn, OuchMyHead)
end

function offer3(NPC, Spawn)
OfferQuest(NPC, Spawn, RiseAndShineWine)
end

function offer4(NPC, Spawn)
OfferQuest(NPC, Spawn, PracticalJokeOnBlarton)
end

function Quest_Completed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You're right, I don't think I want to be around for that.")
	StartConversation(conversation, NPC, Spawn, "Ha! Welcome back. Why don't you pull up a seat and share an ale with me 'n Aroof? Well, on second thought, Aroof here don't look so good. I'm not sure you're going to want to stay around much longer. You know what they say about barbarians and TeirвЂ™Dal wine.")
end

