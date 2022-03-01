--[[
	Script Name	: SpawnScripts/Butcherblock/DockmasterWaulon.lua
	Script Purpose	: Dockmaster Waulon 
	Script Author	: jakejp
	Script Date	: 2018.05.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local DockDelinquency = 249
local CoinForTheCaptain = 255
local NauticalDisaster = 268
local SeekingBrultenHiltstill = 270

function spawn(NPC)
	ProvidesQuest(NPC, DockDelinquency)
	ProvidesQuest(NPC, CoinForTheCaptain)
	ProvidesQuest(NPC, NauticalDisaster)
	ProvidesQuest(NPC, SeekingBrultenHiltstill)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, HalasianWelcome) then
		-- Start first quest (Add if you don't do this quest from start zone)
		-- Add Conversation to complete that side quest
	    AddConversationOption(conversation, "")
	    StartConversation(conversation, NPC, Spawn, "")
	elseif HasCompletedQuest(Spawn, DockDelinquency) == false and HasQuest(Spawn, DockDelinquency	) == false and CanReceiveQuest(Spawn, DockDelinquency) == true then
		-- Offer Dock Delinquency if not completed or started 
	    AddConversationOption(conversation, "Greetings. I am " .. GetName(Spawn) .. ". Perhaps I could help you?", "Option1")
	    AddConversationOption(conversation, "That's some hat you got there.", "Option2")
	    StartConversation(conversation, NPC, Spawn, "Ahoy there, newcomer! Welcome to the Butcherblock Mountains! I'm Dockmaster Waulon Highpebble. You can just call me Waulon though. I'm sorry I can't spend more time chatting wit' ya, but keepin' track o' every box, crate an' person that arrives here is more than one dwarf can handle!")
    elseif GetQuestStep(Spawn, DockDelinquency) >=1 and GetQuestStep(Spawn, DockDelinquency) <= 3 then
		-- Dockmaster Waulon dialogue while on quest
	    Say(NPC, "Have you killed all the beasties yet? Ah! They're makin' a mess of my whole operation!")
	elseif GetQuestStep(Spawn, DockDelinquency) == 4 then
		-- Finish Dock Delinquency and start next quest CoinForTheCaptain
	    SetStepComplete(Spawn, DockDelinquency, 4)
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "My pleasure, Waulon. Anything else I can do to help?", "dlg_3_1")
		AddConversationOption(conversation, "I've done my part. I'll be on my way now.")
	    StartConversation(conversation, NPC, Spawn, "You know, it seems a little bit less chaotic around here already! Thanks for your help!")
    elseif HasCompletedQuest(Spawn, DockDelinquency) and HasCompletedQuest(Spawn, CoinForTheCaptain) == false and HasQuest(Spawn, CoinForTheCaptain) == false then
		-- Start CoinForTheCaptain if one didn't get it yet
        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "My pleasure, Waulon. Anything else I can do to help?", "dlg_3_1")
		AddConversationOption(conversation, "I've done my part. I'll be on my way now.")
	    StartConversation(conversation, NPC, Spawn, "You know, it seems a little bit less chaotic around here already! Thanks for your help!")
    elseif GetQuestStep(Spawn, CoinForTheCaptain) == 1 or GetQuestStep(Spawn, CoinForTheCaptain) == 2 then
		-- Dialogue while on quest
        Say(NPC, "So, how is the ol' Captain? Oh, you haven't spoken with him yet. Well of wit' ya.")
	elseif GetQuestStep(Spawn, CoinForTheCaptain) == 3 then
		-- Finish CoinForTheCaptain and start next quest NauticalDisaster
		SetStepComplete(Spawn, CoinForTheCaptain, 3)
		FaceTarget(NPC, Spawn)
		AddConversationOption(conversation, "I gave the coin to him.", "dlg_10_1")
		AddConversationOption(conversation, "Honestly, I have no idea.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Hello again. What say Captain Stonnacky")
	elseif HasCompletedQuest(Spawn, CoinForTheCaptain) and HasCompletedQuest(Spawn, NauticalDisaster) == false and HasQuest(Spawn, NauticalDisaster) == false then
	    -- start next quest NauticalDisaster if didn't get from previous
	    FaceTarget(NPC, Spawn)
		AddConversationOption(conversation, "I gave the coin to him.", "dlg_10_1")
		AddConversationOption(conversation, "Honestly, I have no idea.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Hello again. What say Captain Stonnacky")
	elseif GetQuestStep(Spawn, NauticalDisaster) == 1 then
		-- dialogue while on quest
	    Say(NPC, "The tome! Did you find the tome?!")	
	elseif GetQuestStep(Spawn, NauticalDisaster) == 2 then
		-- dialogue while on quest
	    AddConversationOption(conversation, "Yes! Here it is!", "NauticalDisasterDialogue1")
		StartConversation(conversation, NPC, Spawn, "Were you successful in finding the tome?")
	elseif GetQuestStep(Spawn, NauticalDisaster) == 3 then
		Say(NPC, "The pages! Did you find all the pages?!")
	elseif GetQuestStep(Spawn, NauticalDisaster) == 4 then
		SetStepComplete(Spawn, NauticalDisaster, 4)
		AddConversationOption(conversation, "Thanks. I'm actually looking for more work. Is there anyone else that could use my help?", "SeekingBrultenHiltstillDialogue1")
		AddConversationOption(conversation, "Well, now that our business is done, I bid you a good day. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You found the pages! Ah, I knew you could do it! Here, please take this as payment. I owe you a debt of thanks!")	
	elseif HasCompletedQuest(Spawn, NauticalDisaster) and HasCompletedQuest(Spawn, SeekingBrultenHiltstill) == false and HasQuest(Spawn, SeekingBrultenHiltstill) == false then
	    AddConversationOption(conversation, "Thanks. I'm actually looking for more work. Is there anyone else that could use my help?", "SeekingBrultenHiltstillDialogue1")
		AddConversationOption(conversation, "Well, now that our business is done, I bid you a good day. Farewell.")
		StartConversation(conversation, NPC, Spawn, "You found the pages! Ah, I knew you could do it! Here, please take this as payment. I owe you a debt of thanks!")	
	elseif GetQuestStep(Spawn, SeekingBrultenHiltstill) == 1 then
		Say(NPC, "Allo there. Have you spoken with Brulten Hiltstill yet?")
	elseif HasCompletedQuest(Spawn, SeekingBrultenHiltstill) then
		local choice = math.random(1,2)
		if choice == 1 then
			Say(NPC, "Thanks again for all your help!")
		elseif choice == 2 then
			Say(NPC, "Thanks for all your help! Go speak with Brulten Hiltstill if ya haven't already.")
		end
	else
        Say(NPC, "Hello, newcomer! Welcome to the Butcherblock Docks.")
		
    end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I will pay him a visit. How do I find him?", "dlg_0_2")
		AddConversationOption(conversation, "That doesn't interest me. Good bye.")
	StartConversation(conversation, NPC, Spawn, "As a matter of fact, there is someone who could use your help. Seek out Brulten Hiltstill. He protects the caravans arriving from the Greater Faydark. ")
end


function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Of course! Where can I find the Captain?", "GiveCoinForTheCaptain")
		AddConversationOption(conversation, "Yes, actually I would.")
	StartConversation(conversation, NPC, Spawn, "As a matter of fact there is. A merchant ship has recently arrived and delivered the payrolls of several ship's crews. Would you mind taking this sack of coins to Captain Stonnacky?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll be right back!", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "That old salt is just over there at the end of the dock. He's a bit senile in his old age, but still a rugged captain nonetheless. After you deliver the sack, report back to me for your reward.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Aye, the Captain's had a bit too much time at sea. But alas, I'm afraid I've just learned of terrible event. It seems there's been an attack!")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Is there anything I can do to help?", "dlg_10_3")
		AddConversationOption(conversation, "Wow, glad I wasn't on that ship. Good day!")
	StartConversation(conversation, NPC, Spawn, "A ship, bound for this very dock, was attacked by aqua goblins just off the coast. Despite the valiant efforts of the crew, many of the passengers were robbed of all their possessions.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Alright, you've got a deal!", "GiveNauticalDisaster")
	StartConversation(conversation, NPC, Spawn, "Aye, would you mind helping me one last time? One of the passengers, an erudite sage, was relieved of an ancient magical tome which detailed much of the history of Norrath. He's paid me handsomely for its return. I assure you, I'll cut you in on his reward if you recover that tome for me.")
end

function dlg_10_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll return when I've recovered the tome.")
	StartConversation(conversation, NPC, Spawn, "Ye'd best check them islands out thar in the bay. I'm sure those nasties brought it back to their camp. I just hope those wicked aqua goblins haven't destroyed it yet.")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, I'm not afraid to get my hands dirty!", "GiveDockDelinquency")
	AddConversationOption(conversation, "On second thought, it sounds like it might possibly be dangerous!")
	StartConversation(conversation, NPC, Spawn, "Aye, that would be wonderful. I could use your help in takin' care of several pests that have been makin' a big mess here. What do you say?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I see. So, could you use any help?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Aye, tis me lucky hat. It brings me the luck! I had me another lucky hat but... I lost it on one me many voyages.")
end

function NauticalDisasterDialogue1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "You asked for the tome, not necessarily all the pages inside the tome. I'd like my payment please.", "NauticalDisasterDialogue2")
	StartConversation(conversation, NPC, Spawn, "Bah, look at it! Nearly half the pages have been ripped out! This will never do!")
end

function NauticalDisasterDialogue2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "I have a hard time believing a goblin would study anything...", "NauticalDisasterDialogue3")
	StartConversation(conversation, NPC, Spawn, "I'm afraid I can't pay you if I haven't been paid meself! Hmm, judging by these scratch marks, it's no doubt that the aqua goblins tore the pages out. Perhaps the aqua goblin finger wagglers took the pages for their own research.")
end

function NauticalDisasterDialogue3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "...", "NauticalDisasterDialogue4")
	StartConversation(conversation, NPC, Spawn, "Well, if you have a better idea on who took the pages, I'd like to hear it now.")
end

function NauticalDisasterDialogue4(NPC, Spawn)
	SetStepComplete(Spawn, NauticalDisaster, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay, but only because it's you.")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, I didn't mean ta be short wit' you. Must be the stress of this 'ere job weighin' on me. Please, find the aqua goblin wizards and see if they have the pages on 'em.")
end

function SeekingBrultenHiltstillDialogue1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will pay him a visit. How do I find him?", "GiveSeekingBrultenHiltstill")
	AddConversationOption(conversation, "That doesn't interest me. Good bye.")
	StartConversation(conversation, NPC, Spawn, "As a matter of fact, there is someone who could use your help. You should seek out Brulten Hiltstill. He's just been stationed out at the newly Established Highland Outpost.")
end

function SeekingBrultenHiltstillDialogue2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Excellent. Then I'm off. Good day!", "GiveSeekingBrultenHiltstill")
	StartConversation(conversation, NPC, Spawn, "To get there, you should take the trail that runs along the cliff face to the east. Once you reach the top of the cliff, look for ol' Brulten near the griffin tower.")
end

function GiveDockDelinquency(NPC, Spawn)
	OfferQuest(NPC, Spawn, DockDelinquency)
end

function GiveCoinForTheCaptain(NPC, Spawn)
        if HasCompletedQuest(Spawn, DockDelinquency) then
	      OfferQuest(NPC, Spawn, CoinForTheCaptain)
        end
end


function GiveNauticalDisaster(NPC, Spawn)
        if HasCompletedQuest(Spawn, CoinForTheCaptain) then
	      OfferQuest(NPC, Spawn, NauticalDisaster)
        end
end

function GiveSeekingBrultenHiltstill(NPC, Spawn)
        if HasCompletedQuest(Spawn, NauticalDisaster) then
	      OfferQuest(NPC, Spawn, SeekingBrultenHiltstill)
        end
end
