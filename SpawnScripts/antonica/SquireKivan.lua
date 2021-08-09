--[[
    Script Name    : SpawnScripts/antonica/SquireKivan.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.08 07:08:53
    Script Purpose : 
                   : 
--]]

local GettingTheAxe = 5334 -- Getting the Axe quest

function spawn(NPC)
ProvidesQuest(NPC,  GettingTheAxe)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, GettingTheAxe) and not HasCompletedQuest(Spawn, GettingTheAxe) then
	PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan000.mp3", "", "", 2734271826, 247332290, Spawn)
	AddConversationOption(conversation, "Who are you?", "Option1")
	AddConversationOption(conversation, "No thank you. I need to be going now.")
	AddConversationOption(conversation, "I need to leave, the smell of that soup is making me sick.")
	StartConversation(conversation, NPC, Spawn, "Are you hungry? I'm making soup.")
	elseif HasQuest(Spawn, GettingTheAxe) then
	if GetQuestStep(Spawn, GettingTheAxe) == 2 then
	PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan006.mp3", "", "", 3390324714, 548456268, Spawn)
	AddConversationOption(conversation, "Yes, here are the ten mining picks you asked for.", "Option5")
	end
    AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you find the Sabertooth's mine?")
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan001.mp3", "", "", 4248655017, 1242656095, Spawn)
	AddConversationOption(conversation, "What is the Sabertooth clan?", "Option3")
	AddConversationOption(conversation, "Who is Sir Jeager?", "Option2")
	AddConversationOption(conversation, "Ok, I need to be on my way now.")
	StartConversation(conversation, NPC, Spawn, "I'm Kivan, Sir Jeager's squire and faithful servant. We're here to fight the insidious Sabertooth clan.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan002.mp3", "", "", 3336136995, 3800742023, Spawn)
	AddConversationOption(conversation, "If he's such a great leader, why was he assigned to do this alone?", "Option4")
	AddConversationOption(conversation, "What is the Sabertooth clan?", "Option3")
	AddConversationOption(conversation, "Ok, I need to be going now.")
	StartConversation(conversation, NPC, Spawn, "Sir Jeager is the most honorable of all the Royal Antonican Guards. He alone was assigned to fight off the Sabertooth clan.  He's a leader among leaders and a brave soldier.")
end


function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan004.mp3", "", "", 235168551, 73943333, Spawn)
	AddConversationOption(conversation, "Why was Sir Jeager assigned the task of fighting these gnolls?", "Option4")
	AddConversationOption(conversation, "I must leave now.")
	StartConversation(conversation, NPC, Spawn, "They're a clan of vicious gnolls. They infest the hills around here, and at night they prey on the children of Qeynos. We must stop them!")
end




function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan003.mp3", "", "", 3360347325, 2913141517, Spawn)
    	AddConversationOption(conversation, "Is there anything I can do to help?", "offer")
	AddConversationOption(conversation, "That's too bad.")
	StartConversation(conversation, NPC, Spawn, "It seems that politics and honesty do not mix. One of the Queen's advisors did not like something Sir Jeager said. So, here we are.")
end

function Option5(NPC, Spawn)
    SetStepComplete(Spawn, GettingTheAxe, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/squire_kivan/antonica/squirekivan007.mp3", "", "", 1357752664, 1145030889, Spawn)
	AddConversationOption(conversation, "Ok, I will speak to him soon.", "Option11")
	StartConversation(conversation, NPC, Spawn, "Wonderful! I appreciate your help. I hope we can stop the gnolls before they become a greater threat to our people. I need to get back to my chores now. You must speak to Sir Jeager.")
end





function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, GettingTheAxe)
end

function respawn(NPC)
	spawn(NPC)
end