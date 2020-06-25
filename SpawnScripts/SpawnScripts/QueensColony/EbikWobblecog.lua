--[[
	Script Name	: SpawnScripts/QueensColony/EbikWobblecog.lua
	Script Purpose	: Ebik Wobblecog 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Modified Date   : 2020.10.04
	Modified by     : premierio015
	Modified Notes  : Added Anims
--]]

local EbiksMissingParts = 185

function spawn(NPC)
	ProvidesQuest(NPC, EbiksMissingParts)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, EbiksMissingParts) then
		if GetQuestStep(Spawn, EbiksMissingParts) == 4 then
			-- handing in quest
			SetStepComplete(Spawn, EbiksMissingParts, 4)
			
			PlayFlavor(NPC, "voiceover/english/island_of_refuge/ebikwobblecog/ior_ebikwobblecog_021.mp3", "", "thank", 1116547002, 1635450019, Spawn)
			AddConversationOption(conversation, "Good luck.")
			StartConversation(conversation, NPC, Spawn, "Yes, yes, yes! There are all the parts I need! Thank you ever so much. Please take this as a token of my appreciation. I'm sure the boat will be here any minute now.")
		else
			-- hasn't finished the quest yet
			PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_secondtalk_01.mp3", "", "nod", 688070292, 1255284608, Spawn)
			AddConversationOption(conversation, "Okay.")
			StartConversation(conversation, NPC, Spawn, "I need all the parts, I can't leave without them and luckily the boat to Qeynos hasn't showed up yet. Please help me find all the parts.")
		end
	elseif HasCompletedQuest(Spawn, EbiksMissingParts) then
		-- quest completed
		AddConversationOption(conversation, "Good luck.")
		StartConversation(conversation, NPC, Spawn, "The boat really should be here by now. It must be running late, or maybe my pocket clock has a frizzer misaligned again... Hmmmm.")
	else
		-- does not have the quest yet
		PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_01.mp3", "", "hello", 2713964680, 2172979410, Spawn)
		AddConversationOption(conversation, "Why are you going to Qeynos?", "dlg_23_1")
		AddConversationOption(conversation, "Good luck with that.")
		StartConversation(conversation, NPC, Spawn, "Why, hello there! I was just sitting here waiting for the boat to Qeynos.")
	end
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_02.mp3", "", "nod", 532888096, 1705696510, Spawn)
	AddConversationOption(conversation, "What was the news?", "dlg_23_2")
	AddConversationOption(conversation, "Safe travels.")
	StartConversation(conversation, NPC, Spawn, "Ahh, I'm going there to meet my father. He dropped me off on this island because he was afraid our boat wouldn't make the trip. I begged him to stay, but he said he had urgent news for Qeynos.")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_03.mp3", "", "confused", 3248832255, 3165995891, Spawn)
	AddConversationOption(conversation, "Why was his ship distracting?", "dlg_23_3")
	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I'm not quite sure. He was in such a hurry that he never told me. Also I may have been a little distracted by his ship, it was really amazing.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_04.mp3", "", "agree", 1312724951, 594166513, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "Because it was under water, of course! Have you ever seen a boat that runs beneath the waves? I certainly haven't. It was such genius, I spent the entire voyage inspecting it.")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_05.mp3", "", "sigh", 2209355729, 410792148, Spawn)
	AddConversationOption(conversation, "What curse?", "dlg_23_5")
	AddConversationOption(conversation, "I want no part of your curse, goodbye.")
	StartConversation(conversation, NPC, Spawn, "I'm certain he hadn't planned on it falling below the surface. It's just another example of our curse, I suppose.")
end

function dlg_23_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island02/ebik_firsttalk_06.mp3", "", "nod", 848346297, 415788395, Spawn)
	AddConversationOption(conversation, "Yes, I'd like that.", "dlg_23_6")
	AddConversationOption(conversation, "Not really.")
	StartConversation(conversation, NPC, Spawn, "Surely you've heard of the Wobblecog family curse of miscalculation? No... no, I suppose you haven't, have you? Well, it doesn't appear that the boat is here yet.  I imagine I've got time to tell you about our curse if you'd like to hear it.")
end

function dlg_23_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island02/ebik_firsttalk_07.mp3", "", "agree", 489617943, 459263052, Spawn)
	AddConversationOption(conversation, "Please go on.", "dlg_23_7")
	StartConversation(conversation, NPC, Spawn, "Very well. It began long ago in Ak'Anon when the king decided to hold a contest. It was grand.  The king invited everyone to make a clockwork king, and the one that most resembled him would win.")
end

function dlg_23_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_08.mp3", "", "nod", 2658473484, 2726816701, Spawn)
	AddConversationOption(conversation, "What happened then?", "dlg_23_8")
	AddConversationOption(conversation, "That's nice, fairwell.")
	StartConversation(conversation, NPC, Spawn, "The two favored inventors were my ancestor, Tizik Wobblecog, and an ingenious, but maligned tinkerer named Meldrath. They both submitted their designs, and after much deliberation it was found that the Wobblecog plan provided a much more accurate interpretation of the king.")
end

function dlg_23_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_09.mp3", "", "sigh", 168646029, 2064100068, Spawn)
	AddConversationOption(conversation, "Do go on.", "dlg_23_9")
	StartConversation(conversation, NPC, Spawn, "Tizik's clockwork became the royal doppelganger of course, and Meldrath became infuriated. He placed a curse on my family that has lasted every generation from then onward.")
end

function dlg_23_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_10.mp3", "", "crazy", 468670444, 2791058506, Spawn)
	AddConversationOption(conversation, "That does sound bothersome.", "dlg_23_10")
	StartConversation(conversation, NPC, Spawn, "He cursed us with miscalculation! It's nearly driven my family to madness. ")
end

function dlg_23_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_11.mp3", "", "nod", 1677273819, 2525140274, Spawn)
	AddConversationOption(conversation, "That sounds devastating.", "dlg_23_11")
	AddConversationOption(conversation, "Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "We're the most ingenious inventors, you see. We have truly inspired ideas, but can not ever see them through to completion because we fumble some inane formula.")
end

function dlg_23_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_12.mp3", "", "agree", 605082040, 3732575966, Spawn)
	AddConversationOption(conversation, "I see.", "dlg_23_12")
	StartConversation(conversation, NPC, Spawn, "Oh, it is! Take my father for instance. We thought he had finally overcome the curse when he made that boat. It looked so beautiful and was more complete than any other Wobblecog invention has been in centuries. ")
end

function dlg_23_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_13.mp3", "", "shrug", 2893072579, 3745020880, Spawn)
	AddConversationOption(conversation, "How did you get here if the boat sunk?", "dlg_23_13")
	AddConversationOption(conversation, "Oh boy...I really don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Then, as soon as we got it out in the ocean, it sunk like a rock. Who knew iron wouldn't float?")
end

function dlg_23_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_14.mp3", "", "sigh", 950110533, 2594458588, Spawn)
	AddConversationOption(conversation, "But it moved along the floor?", "dlg_23_14")
	AddConversationOption(conversation, "Are you still talking?  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Luckily, my father had compensated for the curse. He knew something was bound to go wrong, so he completely encapsulated the boat, making it water tight just in case something went awry. Sure enough, the moment she left the berth the Ticking Tock fell straight to the sea floor.")
end

function dlg_23_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_15.mp3", "", "nod", 2110642575, 2339438650, Spawn)
	AddConversationOption(conversation, "I see...", "dlg_23_15")
	AddConversationOption(conversation, "Okay then...I'm just gonna walk away now.")
	StartConversation(conversation, NPC, Spawn, "Oh, yes! There were several waterproofed whirligigs set up in a flagnuvian configuration to displace the meganominal gnoggnards.")
end

function dlg_23_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_16.mp3", "", "confused", 2068602594, 1935966397, Spawn)
	AddConversationOption(conversation, "What's wrong?", "dlg_23_16")
	AddConversationOption(conversation, "And that's my cue to leave.")
	StartConversation(conversation, NPC, Spawn, "So here I am, sitting on the dock with all of the extra par... hmm... Oh! This seems to be a bit of a problem.")
end

function dlg_23_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_17.mp3", "", "sigh", 1279276755, 1158727410, Spawn)
	AddConversationOption(conversation, "Maybe I can help?", "dlg_23_17")
	AddConversationOption(conversation, "Sounds like you're out of luck.")
	StartConversation(conversation, NPC, Spawn, "I'm missing the extra parts that my father asked me to collect. Oh no! This is disastrous! I can't leave the dock because I'll miss the boat and I can't go to Qeynos without those parts! What am I going to do?")
end

function dlg_23_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_18.mp3", "", "thanks", 651304560, 3462850597)
	AddConversationOption(conversation, "What parts are you missing?", "dlg_23_18")
	StartConversation(conversation, NPC, Spawn, "You'd do that for me? Oh, thank you very, very, much! I'll stay here and ask the boat captain to wait for you to return, should he come. I'm missing three parts and I have no idea where they could be. I know they're on the island somewhere!")
end

function dlg_23_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/ebik_wobblecog/tutorial_island01/ebik/ebik_firsttalk_19.mp3", "", "nod", 3704607131, 803524082, Spawn)
	AddConversationOption(conversation, "I'll get right on it.", "dlg_23_19")
	AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "I'm missing a size 7 clunker, a copper-coated springer, and a triangle spinner. If you could find them and bring them to me, I'd be forever grateful!")
end

function dlg_23_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, EbiksMissingParts)
end