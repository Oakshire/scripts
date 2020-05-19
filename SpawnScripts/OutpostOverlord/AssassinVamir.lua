--[[
	Script Name	: AssassinVamir.lua
	Script Purpose	: Handles the spawn script for Assasin Vamir in the Outpost of the Overlord.
	Script Author	: Scatman (Updated by Cynnar 2018.10.14)
	Script Date	: 2008.12.28
	Script Notes	: 
--]]
local HawkBait = 8060
local Preventative_Maintenance = 365

function spawn(NPC)
	ProvidesQuest(NPC, Preventative_Maintenance)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, 54) and GetQuestStep(Spawn, 54) == 8 then
		AddConversationOption(conversation, "Can you tell me about Charles Arker?", "CharlesArker")
	end
	
	if HasCompletedQuest(Spawn, Preventative_Maintenance) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir010.mp3", "", "", 81913167, 2035244707, Spawn)
		AddConversationOption(conversation, "I need more mole rats!", "MoreRats")
		AddConversationOption(conversation, "Goodbye.")
		StartConversation(conversation, NPC, Spawn, "The Tunarians won't have many animals to train because of you. Nice works! Return to me if you ever needs more mole rats.")
	elseif HasQuest(Spawn, Preventative_Maintenance) then
		if GetQuestStep(Spawn, Preventative_Maintenance) == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir001.mp3", "", "", 2097737223, 719705804, Spawn)
			AddConversationOption(conversation, "And you want me to...?", "WantMeTo")
			AddConversationOption(conversation, "I'll come back later.")
			StartConversation(conversation, NPC, Spawn, "Hellos " .. GetName(Spawn) .. ", Tayil sent word you were comings. I's been scouting out the nearby areas, trying to get a better feels of what we're up against. Beastmasters these Tunarians are, training the wild animals of the island to fight for them!")
		elseif GetQuestStep(Spawn, Preventative_Maintenance) == 2 then
			AddConversationOption(conversation, "Okay, I'll be back.")
			StartConversation(conversation, NPC, Spawn, "North up the slope into the Wilderwood the bears are, or west in Cliffdiver Canyon. Kills them and return when you are done.")
		elseif GetQuestStep(Spawn, Preventative_Maintenance) == 3 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir005.mp3", "", "", 1066150974, 809725343, Spawn)
			AddConversationOption(conversation, "How do I do it?", "HowDoIDoIt")
			AddConversationOption(conversation, "I don't have the time right now.")
			StartConversation(conversation, NPC, Spawn, "The bears are dead? Good. Nows for a tricky task, so pay attention! The hawks you will now hunt reside high on the cliffs in Cliffdiver Canyon to the west of here. Untils now, we've been unable to get to them.")
		elseif GetQuestStep(Spawn, Preventative_Maintenance) == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir007.mp3", "", "", 4047853205, 3078826387, Spawn)
			if not HasItem(Spawn, 10582) then
				AddConversationOption(conversation, "I need more mole rats!", "MoreRats")
			end
			AddConversationOption(conversation, "Okay, I'll keep trying.")
			StartConversation(conversation, NPC, Spawn, "Examine and then release the mole rats from your inventory when you thinks you are in a good position to lure down the hawks in Cliffdiver Canyon to the west. Then dispose of the hawks.")
		elseif GetQuestStep(Spawn, Preventative_Maintenance) == 5 then
			SetStepComplete(Spawn, Preventative_Maintenance, 5)
			SummonItem(Player, 1027)
			while HasItem(Spawn, HawkBait) do
				RemoveItem(Spawn, HawkBait)
			end
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir009.mp3", "", "", 2286682451, 2625576756, Spawn)
			AddConversationOption(conversation, "Thank you.")
			StartConversation(conversation, NPC, Spawn, "Excellent job! I think we's done a good job stoppings any new recruits for the Tunarians. Here, this note was just delivered to us. I believe it is from Tayl.")
		end
	else
		AddConversationOption(conversation, "Very well.")
		StartConversation(conversation, NPC, Spawn, "I'm not ready for you yet, adventurer. Speak with Tayil N'Velex back at the outpost to prepare yourself for my tasks.")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function WantMeTo(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir002.mp3", "", "", 1076416759, 1314405932, Spawn)
   AddConversationOption(conversation, "Where are these animals?", "WhereAnimals")
   StartConversation(conversation, NPC, Spawn, "We's gonna cut off their resources to weaken them in the long terms, settings up our major attack after they are weakened. If we take out their picks of the wild animals, they'll have nothing to train.")
end

function WhereAnimals(NPC, Spawn)
   SetStepComplete(Spawn, Preventative_Maintenance, 1)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir003.mp3", "", "", 165936416, 810751258, Spawn)
   AddConversationOption(conversation, "The bears are mine!")
   StartConversation(conversation, NPC, Spawn, "They trains the bears, hawks, and wolves on the island. The wolves are a bits too deep to touch now, but the bears and hawks are nearby so we starts with those. First, head north up the slope into the Wilderwood or west into Cliffdiver Canyon and lay down some bears. Returns when you are done.")
end

function HowDoIDoIt(NPC, Spawn)
   SetStepComplete(Spawn, Preventative_Maintenance, 3)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir006.mp3", "", "", 3805307037, 1537181172, Spawn)

   AddConversationOption(conversation, "Dinner is served!")
   StartConversation(conversation, NPC, Spawn, "The cliffdiver hawks perch high up and watch for foods to attack below. I's got some food for them right here, hahahaha! Take these mole rats and when you think you are in a good position below the hawks, examine them in your inventory and release one. Return if you needs more.")
end

function MoreRats(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- summon more hawk bait
	SummonItem(Spawn, HawkBait)
	SummonItem(Spawn, HawkBait)
	SummonItem(Spawn, HawkBait)
	SummonItem(Spawn, HawkBait)
	SummonItem(Spawn, HawkBait)
	AddConversationOption(conversation, "Dinner is served!")
	StartConversation(conversation, NPC, Spawn, "Here is some more of the little pudgies! Have fun.")
end

function CharlesArker(NPC, Spawn)
	SetStepComplete(Spawn, 54, 8)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir012.mp3", "", "", 906369529, 2540359356, Spawn)
	AddConversationOption(conversation, "Uh...yeah.  Thanks for your time.")
	StartConversation(conversation, NPC, Spawn, "Is he that guy with the bad comb-over?")
end

--[[

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir008.mp3", "", "", 1715782563, 1719955679, Spawn)
	AddConversationOption(conversation, "Thanks.")
	StartConversation(conversation, NPC, Spawn, "Here is the note.")
end




function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Dinner is served!", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "Here is some mores of the little pudgies!  Have fun.")
end

function dlg_46_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/assassin_vamir/tutorial_island02_evil_revamp/quests/citizenship/assassinvamir/assassinvamir010.mp3", "", "", 81913167, 2035244707, Spawn)
	AddConversationOption(conversation, "What can you tell me about Charles Arker?", "dlg_46_2")
	AddConversationOption(conversation, "I need more mole rats!")
	AddConversationOption(conversation, "I need the note Tayil wanted you to give me.")
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "The Tunarians won't have many animals to train because of you.  Nice works!  Return to me if you ever needs more mole rats.")
end

--]]
