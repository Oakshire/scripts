--[[
    Script Name    : SpawnScripts/WillowWood/DaryannStormrider.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.15 11:02:34
    Script Purpose : 
                   : 
--]]

local TheBalanceOfLife = 5480

function spawn(NPC)
ProvidesQuest(NPC, TheBalanceOfLife)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TheBalanceOfLife) and not HasCompletedQuest(Spawn, TheBalanceOfLife) then
	Option1(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheBalanceOfLife) == 1 or GetQuestStep(Spawn, TheBalanceOfLife) == 2 then
	Option4(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheBalanceOfLife) == 4 or GetQuestStep(Spawn, TheBalanceOfLife) == 3 then
	Option5(NPC, Spawn)
	elseif GetQuestStep(Spawn, TheBalanceOfLife) == 5 or GetQuestStep(Spawn, TheBalanceOfLife) == 6 then
	Option6(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, TheBalanceOfLife) then
	Quest_Finished(NPC, Spawn)
end
end





function respawn(NPC)
	spawn(NPC)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann001.mp3", "", "", 2350021449, 2306066877, Spawn)
	if GetLevel(Spawn)>=13 then
	AddConversationOption(conversation, "Do you need help with anything?", "Option2")
	end
	AddConversationOption(conversation, "Luckily, I am busy with other tasks. ")
	StartConversation(conversation, NPC, Spawn, "I watch over the woodlands and keep nature in balance. Sometimes it's an unpleasant and difficult task, but without hunters, the hunted would overrun our land.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann002.mp3", "", "", 3412334991, 3636507740, Spawn)
	AddConversationOption(conversation, "Sounds like that would suit me well.", "Option3")
	AddConversationOption(conversation, "Maybe I'll come back later.")
	StartConversation(conversation, NPC, Spawn, "Each village has someone who decides which creatures' numbers need culling and what populations are stable. I'm the representative for the Willow Wood. If you wish to help me, I will gladly assign you some tasks.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann003.mp3", "", "nod", 1849804125, 150143999, Spawn)
	AddConversationOption(conversation, "I will return.", "offer")
	StartConversation(conversation, NPC, Spawn, "Sometimes a population grows rapidly, and we must hunt weak and sickly creatures to ensure others in the population remain healthy. Other times, predators disrupt nature's balance. I need you to hunt ten sea turtles near Antonica's shore before their egg laying season begins.  Please return to me when you finish.")
end

function Quest_Progress(NPC, Spawn)
PlayFlavor(NPC, "", "Good luck on your hunt, adventurer.", "", 1689589577, 4560189, Spawn)
end

function Option4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann004.mp3", "", "", 3495621527, 2357616200, Spawn)
	if GetQuestStep (Spawn, TheBalanceOfLife)==2 then
	AddConversationOption(conversation, "Your request is done.", "Option4a")
	end
    AddConversationOption(conversation, "I'm still working on it.")	
	StartConversation(conversation, NPC, Spawn, "Have you thinned the sea turtle population?")
end

function Option4a(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann005.mp3", "", "", 1446658959, 3624870178, Spawn)
	AddConversationOption(conversation, "What else do I need to do?", "Option4b")
	StartConversation(conversation, NPC, Spawn, "Thank you for your help. Are you ready for another task?")
end

function Option4b(NPC, Spawn)
    SetStepComplete(Spawn, TheBalanceOfLife, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village06/quests/daryann_stormrider/daryann006.mp3", "", "", 4199318136, 2611202176, Spawn)
	AddConversationOption(conversation, "I will return soon.")
	StartConversation(conversation, NPC, Spawn, "The red tailed hawk population in Antonica has risen to unhealthy levels. They are fighting eachother for territory rather than ridding the land of pests. Return to me when defeat a handfull of them.")
end

function Option5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann007.mp3", "", "nod", 1943261209, 407620242, Spawn)
	if GetQuestStep (Spawn,TheBalanceOfLife)==4 then
	AddConversationOption(conversation, "Your request is done.", "Option5a")
	end
    AddConversationOption(conversation, "I'm still working on it.")	
	StartConversation(conversation, NPC, Spawn, "Have you thinned the red tailed hawks? They are so beautiful in flight. I do hate to single them out.")
end

function Option5a(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann008.mp3", "", "", 3502562650, 3671794991, Spawn)
	AddConversationOption(conversation, "What else do I need to do?", "Option5b")
	StartConversation(conversation, NPC, Spawn, "You have been very helpful. They say I have the gift of helping others in need. It appears you also have this gift. Are you ready to use it once again?")
end

function Option5b(NPC, Spawn)
    SetStepComplete(Spawn, TheBalanceOfLife, 4)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village06/quests/daryann_stormrider/daryann009.mp3", "", "", 1780914877, 503351078, Spawn)
	AddConversationOption(conversation, "I will return soon.")
	StartConversation(conversation, NPC, Spawn, "Antonica's dark claw crabs have experienced a surge in population. We need to bring their levels under control. Return to me after you thin out the population.")
end

function Option6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann010.mp3", "", "nod", 1284135083, 2776970357, Spawn)
	if GetQuestStep (Spawn,TheBalanceOfLife)==6 then
	AddConversationOption(conversation, "Your request is done.", "Option7")
	end
    AddConversationOption(conversation, "I'm still working on it.")	
	StartConversation(conversation, NPC, Spawn, "Have you dealt with the dark claw crabs?")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/daryann_stormrider/qey_village05/quests/daryann_stormrider/daryann011.mp3", "", "", 1936168502, 3017543852, Spawn)
	AddConversationOption(conversation, "Thank you, Daryann.","Reward")
	StartConversation(conversation, NPC, Spawn, "Thank you for your services.  You proved to be a valuable member of the community here in The Willow Wood. Good luck in your future endeavors.  Please take this small token of our appreciation.")
end


function Quest_Finished(NPC, Spawn)
PlayFlavor(NPC, "", "Thanks to your help.  The populations in Antonica are somewhat stabilized.  At least, for now.", "", 1689589577, 4560189, Spawn)
end

function Reward(NPC, Spawn)
    SetStepComplete(Spawn, TheBalanceOfLife, 6)
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, TheBalanceOfLife)
end

