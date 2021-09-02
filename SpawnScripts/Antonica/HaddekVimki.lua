--[[
	Script Name		:	HaddekVimki.lua
	Script Purpose	:	Haddek Vimki
	Script Author	:	Jabantiz
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

local RunningOutOfBeer = 5352

function spawn(NPC)
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
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    if not HasQuest(Spawn, RunningOutOfBeer) and not HasCompletedQuest(Spawn, RunningOutOfBeer) then
    Option1(NPC, Spawn)
    elseif GetQuestStep(Spawn, RunningOutOfBeer) == 1 then
    PlayFlavor(NPC, "", "Hruh? What? I thought I told you what I wanted from you. If you're not going to take care of it I'm going to have old Aroof here take care of... Well... it don't look like he is going to be taking care of much... but when I tell him tomorrow, he will be awful angry!", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn, RunningOutOfBeer) == 2 then
    Option7(NPC, Spawn)
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


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, RunningOutOfBeer)
end



end

