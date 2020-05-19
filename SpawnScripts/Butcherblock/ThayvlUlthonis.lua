--[[
	Script Name	: SpawnScripts/ButcherblockMountains/ThayvlUlthonis.lua
	Script Purpose	: Thayvl Ulthonis 
	Script Author	: jakejp
	Script Date	: 2018.06.17
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local StockComponents = 345

function spawn(NPC)
	ProvidesQuest(NPC, StockComponents)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, StockComponents) == false and HasQuest(Spawn, StockComponents) == false and CanReceiveQuest(Spawn, StockComponents) == true then
		-- Offer first quest if not completed or started 
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What are you seeking?", "dlg_5_1")
		AddConversationOption(conversation, "Spell components?", "dlg_5_4")
		StartConversation(conversation, NPC, Spawn, "A thousand curses on the Master! A mage of my stature shouldn't have to stoop so low as to be forced to collect spell components for his experiments.")
    elseif GetQuestStep(Spawn, StockComponents) == 1 then
	    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Do not return until you have gathered all the wandering essence dust that I require!")
	elseif GetQuestStep(Spawn, StockComponents) == 2 then
		SetStepComplete(Spawn, StockComponents, 2)
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Indeed.")
		AddConversationOption(conversation, "Um, I've actually heard otherwise but... Nevermind.")
		StartConversation(conversation, NPC, Spawn, "Good. The Master will be most pleased with me. Perhaps now, after securing his trust I can... well, my plans are of little matter to you. Here take this. Let it not be said that the Teir'Dal do not keep their word.")
	elseif HasCompletedQuest(Spawn, StockComponents) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Your efforts are appreciated. If the Master demands another cadaver, I'll make sure you're not it.")
	end
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "For a reward I might be able to collect the essence dust for you.", "GiveStockComponents")
		AddConversationOption(conversation, "Interesting. What sort of spell is he preparing?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "My... benefactor is most insistent that I gather the dust from the wandering essences that meander throughout these mountains. Something about their nature adds to the potency of a spell he is creating.")
end

function AcceptedDialogue(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "We have a deal. I will return with a large amount of dust shortly.")
	StartConversation(conversation, NPC, Spawn, "Hmm. Alright, I might be able to part with a trinket of sorts in exchange for your help. The sooner I have all the material components I've been... asked to bring back, the sooner I can return to... home. Yes, home.")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Fine, fine. Though, for a reward I might be able to collect the essence dust for you.", "GiveStockComponents")
	StartConversation(conversation, NPC, Spawn, "Many questions should remain unanswered, my friend. I've seen the Master kill people for asking too much. I'll not risk a similar fate in divulging secrets to a newly met adventurer.")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I've seen that. What other components are there?", "dlg_5_5")
	AddConversationOption(conversation, "Actually, I'm not looking for a lesson on spell casting. What are you out doing out here?", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Yes, often times special components are required to cast a spell. As an adventurer you no doubt have come across mages who use verbal components when they cast a spell.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes, I've seen that. What other components are there?", "dlg_5_6")
	AddConversationOption(conversation, "Actually, I'm not looking for a lesson on spell casting. What are you out doing out here?", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "A mage might also be required to gesture or, more simply put, move one's hands in a particular fashion to complete a spell. This type of component is called a somatic component.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "So what sort of component are you gathering?", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "The third type of component, which happens to be the type I've been sent to these acursed mountains to harvest, is the material type. A pinch of dirt from a particular location, the wing of a shriller, or a gem are all examples.")
end

function GiveStockComponents(NPC, Spawn)
        OfferQuest(NPC, Spawn, StockComponents)
end