--[[
	Script Name		:	TobiasGranville.lua
	Script Purpose	:	Tobias Granville (2490178)
	Script Author	:	Jabantiz
	Script Date		:	8/10/2016
	Script Notes	:	
--]]
local GranvillesRestaurantAntonica = 182

function spawn(NPC)
	ProvidesQuest(NPC, GranvillesRestaurantAntonica)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	if not HasQuest(Spawn, GranvillesRestaurantAntonica) and not HasCompletedQuest(Spawn, GranvillesRestaurantAntonica) then
		PlayFlavor(NPC, "", "Looking for folks skilled at fishing!", "beckon", 0, 0, Spawn)
	else
		Say(NPC, "Good to see you again.", Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, GranvillesRestaurantAntonica) then
		Say(NPC, "I appreciate your help.", Spawn)
	elseif HasQuest(Spawn, GranvillesRestaurantAntonica) then
		local step = GetQuestStep(Spawn, GranvillesRestaurantAntonica)
		if step <= 2 then
			AddConversationOption(conversation, "I'm still gathering them.  I'll be back shortly.")
			if step == 2 then
				AddConversationOption(conversation, "Here are the crab shells.", "Option2")
			end
			StartConversation(conversation, NPC, Spawn, "Where are my ingredients, hm?", "voiceover/english/tobias_granville/steppes/quests/quest_tobias_granville/tobias_granville005.mp3", 3287496753, 2683193173)
		elseif step <= 4 then
			AddConversationOption(conversation, "I'm still working on it.")
			if step == 4 then
				AddConversationOption(conversation, "Here's your seafood.", "Option3")
			end
			StartConversation(conversation, NPC, Spawn, "Well, it's about time.  I, uh, was beginning to worry.")
		else
			AddConversationOption(conversation, "If I ever go to Nektulos, I'll look her up.")
			StartConversation(conversation, NPC, Spawn, "I appreciate the report.  This is all the coin I have to pay you for your work.  My sister Tanny Granville says I spend too much on ingredients.  Well, if you want more work you can always speak with her.  She's out in Nektulos Forest getting some ingredients out that-a-way.  Thanks for the work, friend.")
		end
	else
		-- Doesn't have the quest and hasn't completed it
		AddConversationOption(conversation, "Sorry, I'm not interested.")
		AddConversationOption(conversation, "What kind of hoofing do you mean?", "Option1")
		StartConversation(conversation, NPC, Spawn, "Who knew opening a restaurant would take all this field work?  Hunting, gathering, searching, when all I want to do is cook!  Cook, I tell you!  I need someone else to do all this hoofing around!")
		PlayFlavor(NPC, "voiceover/english/tobias_granville/steppes/quests/quest_tobias_granville/tobias_granville001.mp3", "", "shrug", 2405099568, 1478987434, Spawn)
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Well, I have other tasks at hand.  Sorry, can't help you.")
	AddConversationOption(conversation, "I'm pretty good.  What do you need, exactly?", "Option4")
	StartConversation(conversation, NPC, Spawn, "Splendid timing! I'm creating the most delightful seafood bisque.  So many ingredients are needed to create the flavors in a good bisque.  I have most of them set aside already, but I'm looking for an excellent fisherman and hunter to get my final ingredients.  It's vital that I hire only the best!  Only the best can get what I need!", "voiceover/english/tobias_granville/steppes/quests/quest_tobias_granville/tobias_granville002.mp3", 1972418532, 2059774414)
end

function Option4(NPC, Spawn)
	OfferQuest(NPC, Spawn, GranvillesRestaurantAntonica)
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	SetStepComplete(Spawn, GranvillesRestaurantAntonica, 2)

	AddConversationOption(conversation, "I'll be back with your seafood.")
	StartConversation(conversation, NPC, Spawn, "These will do nicely.  I can certainly trust you to find the highest quality seafood from the mobs of fish.  Not just any seafood, mind you, only the best will do!  You can't find these things just anywhere, you know.  Head straight down the Thundermist Road to the little cove at the end of Thundermist Valley.  Look for the rocks the sailors call 'the Three Sisters,' though I don't know that anyone else calls those rocks any such name.")
	-- 'the Three Sisters,' is suppose to be " not ' but i can't get the damn editors to accept /, always changes it to /
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Not right now.")
	AddConversationOption(conversation, "What's your theory on this?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Good, good! These will do nicely.  I'm surprised it took this long; my old supplier used to say that one could walk across the water on the backs of the crabs and fishes.  Something must be keeping their numbers unnaturally low.  Perhaps you could look into this?  I need to ensure a steady supply of fresh ingredients for my bisque!")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	SetStepComplete(Spawn, GranvillesRestaurantAntonica, 4)

	AddConversationOption(conversation, "I'll investigate and report back.")
	StartConversation(conversation, NPC, Spawn, "He used to gather my ingredients at Thundermist Valley's cove.  Last I saw him, he was babbling about singing.  I suspect there's a concentration of sirens out there that might have a hand in hoarding not only my ingredients but my suppliers as well.  They might have some kind of underwater gathering place near the shore.")
end