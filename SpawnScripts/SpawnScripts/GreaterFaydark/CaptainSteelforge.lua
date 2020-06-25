--[[
	Script Name	: SpawnScripts/GreaterFaydark/CaptainSteelforge.lua
	Script Purpose	: Captain Steelforge 
	Script Author	: John Adams
	Script Date	: 2009.02.05
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if HasCompletedQuest(Spawn, 152) then
	    -- initial response when not on Trillis quest, but also not on Spelunkle quest yet (convo 17)
	    PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge001.mp3", "", "", 3588015158, 768345314, Spawn)
	    AddConversationOption(conversation, "I'm not worried about any ole grobins.", "dlg_17_1")
	    AddConversationOption(conversation, "I'm out of here!")
	    StartConversation(conversation, NPC, Spawn, "Whoa, what are ye doin' out here?  Thar be grobins in this cave that'll eat yer eyeballs and roast yer toes!  Watch yerself youngin'.")
    else
	    -- initial hail when on quest from Trillis
	    -- if convo==13 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge001.mp3", "", "", 3588015158, 768345314, Spawn)
		AddConversationOption(conversation, "I brought a status report from Sentry Trillis.", "dlg_13_1")
		AddConversationOption(conversation, "I'm not worried about any ole grobins.")
		AddConversationOption(conversation, "I'm out of here!")
		StartConversation(conversation, NPC, Spawn, "Whoa, what are ye doin' out here?  Thar be grobins in this cave that'll eat yer eyeballs and roast yer toes!  Watch yerself youngin'.")
	end

	-- initial response when on Trillis quest, but not on Spelunkle quest
	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge001.mp3", "", "", 3588015158, 768345314, Spawn)
		AddConversationOption(conversation, "I brought a status report from Sentry Trillis.", "dlg_22_1")
		AddConversationOption(conversation, "I'm out of here!")
		StartConversation(conversation, NPC, Spawn, "Whoa, what are ye doin' out here?  Thar be grobins in this cave that'll eat yer eyeballs and roast yer toes!  Watch yerself youngin'.")
	end

	-- completing Spelunkle quest
	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge005.mp3", "", "", 2083248035, 1619033401, Spawn)
		AddConversationOption(conversation, "He's fine.  He also told me about the shrumbler queen they had in the cave.", "dlg_30_1")
		AddConversationOption(conversation, "I haven't found him yet.")
		StartConversation(conversation, NPC, Spawn, "Did ya find little Spelunkle?  Tell me, is he okay?")
	end

end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge006.mp3", "", "", 897068952, 3276150926, Spawn)
	AddConversationOption(conversation, "Nah, I took care of it.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "The shrumbler queen they 'had'?  Did they go and move her or somethin'?")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge007.mp3", "", "", 1161262204, 1265134941, Spawn)
	AddConversationOption(conversation, "I couldn't have done it without Spelunkle's help.", "dlg_5_3")
	AddConversationOption(conversation, "Yeah, I'm that good.")
	StartConversation(conversation, NPC, Spawn, "You did?  Amazin'!  You solved our problems on your own?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge008.mp3", "", "", 647162173, 4086848516, Spawn)
	AddConversationOption(conversation, "Thank you, Captain Steelforge.", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "Cleanin' up the rest of these grobins should be a breeze now that you've destroyed their operation.  You did a fine job, .. GetName(Spawn) .. .  Please take this as payment. ")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge009.mp3", "", "", 195987972, 3354737418, Spawn)
	AddConversationOption(conversation, "Sure, I can take it.", "dlg_5_5")
	AddConversationOption(conversation, "No thanks, I'm busy.")
	StartConversation(conversation, NPC, Spawn, "Oh, before you go... could you take this report of our activities to Jenthis Viridar at the Sapling Spur Outpost?  You'll find the outpost through Echo Echo Canyon, east of here.")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge010.mp3", "", "", 247015049, 192968662, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_5_6")
	StartConversation(conversation, NPC, Spawn, "Thanks again for all your help!")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge002.mp3", "", "", 182585775, 224821525, Spawn)
	AddConversationOption(conversation, "Grobins don't worry me.  I already got rid of the ones at Amethyst Pond.", "dlg_13_2")
	StartConversation(conversation, NPC, Spawn, "Private Trillis' report, ya say?  Good, looks like 'All Clear' from up top, boys.  Now ya best be gettin' to some place safe.  Grobins ain't some wee pals to be playing ring-around-the-rosey-posey with.")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge003.mp3", "", "", 2413910951, 3163146972, Spawn)
	AddConversationOption(conversation, "I can handle it.  What is going on?", "dlg_13_3")
	AddConversationOption(conversation, "Into the cave?  No thanks.")
	StartConversation(conversation, NPC, Spawn, "Not worried, eh? We could all use a bit o' help if yer interested.  But it involves goin' into Drippy Caves, so it be okay if ye want to back out.")
end

function dlg_13_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge004.mp3", "", "", 4222019617, 563206009, Spawn)
	AddConversationOption(conversation, "You got it.", "dlg_13_4")
	StartConversation(conversation, NPC, Spawn, "We got here a few minutes ago, and before we could even unload our packs, old Spelunkle darted into the caves to investigate.  He's got no brains, but ya gotta admire his spunk.  We need to set up the defenses here to contain the grobin, but I need you to check on Spelunkle and make sure he's okay.")
end

function dlg_13_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge004_offer.mp3", "", "", 2284193320, 823728005, Spawn)
	AddConversationOption(conversation, "I'll find him.", "dlg_13_5")
	StartConversation(conversation, NPC, Spawn, "I'm sure he's fine, but that don't stop me from worrying.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge003.mp3", "", "", 2413910951, 3163146972, Spawn)
	AddConversationOption(conversation, "I can handle it.  What is going on?", "dlg_17_2")
	AddConversationOption(conversation, "Into the cave?  No thanks.")
	StartConversation(conversation, NPC, Spawn, "Not worried, eh? We could all use a bit o' help if yer interested.  But it involves goin' into Drippy Caves, so it be okay if ye want to back out.")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge004.mp3", "", "", 4222019617, 563206009, Spawn)
	AddConversationOption(conversation, "You got it.", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "We got here a few minutes ago, and before we could even unload our packs, old Spelunkle darted into the caves to investigate.  He's got no brains, but ya gotta admire his spunk.  We need to set up the defenses here to contain the grobin, but I need you to check on Spelunkle and make sure he's okay.")
end

function dlg_17_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge004_offer.mp3", "", "", 2284193320, 823728005, Spawn)
	AddConversationOption(conversation, "I'll find him.", "dlg_17_4")
	StartConversation(conversation, NPC, Spawn, "I'm sure he's fine, but that don't stop me from worrying.")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge002.mp3", "", "", 182585775, 224821525, Spawn)
	AddConversationOption(conversation, "Well, I'll be going.", "dlg_22_2")
	StartConversation(conversation, NPC, Spawn, "Private Trillis' report, ya say?  Good, looks like 'All Clear' from up top, boys.  Now ya best be gettin' to some place safe.  Grobins ain't some wee pals to be playing ring-around-the-rosey-posey with.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge006.mp3", "", "", 897068952, 3276150926, Spawn)
	AddConversationOption(conversation, "Nah, I took care of it.", "dlg_30_2")
	StartConversation(conversation, NPC, Spawn, "The shrumbler queen they 'had'?  Did they go and move her or somethin'?")
end

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge007.mp3", "", "", 1161262204, 1265134941, Spawn)
	AddConversationOption(conversation, "I couldn't have done it without Spelunkle's help.", "dlg_30_3")
	AddConversationOption(conversation, "Yeah, I'm that good.")
	StartConversation(conversation, NPC, Spawn, "You did?  Amazin'!  You solved our problems on your own?")
end

function dlg_30_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge008.mp3", "", "", 647162173, 4086848516, Spawn)
	AddConversationOption(conversation, "Thank you, Captain Steelforge.", "dlg_30_4")
	StartConversation(conversation, NPC, Spawn, "Cleanin' up the rest of these grobins should be a breeze now that you've destroyed their operation.  You did a fine job, .. GetName(Spawn) .. .  Please take this as payment. ")
end

function dlg_30_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge009.mp3", "", "", 195987972, 3354737418, Spawn)
	AddConversationOption(conversation, "Sure, I can take it.", "dlg_30_5")
	AddConversationOption(conversation, "No thanks, I'm busy.")
	StartConversation(conversation, NPC, Spawn, "Oh, before you go... could you take this report of our activities to Jenthis Viridar at the Sapling Spur Outpost?  You'll find the outpost through Echo Echo Canyon, east of here.")
end

function dlg_30_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/captain_steelforge/captain_steelforge010.mp3", "", "", 247015049, 192968662, Spawn)
	AddConversationOption(conversation, "You are welcome.", "dlg_30_6")
	StartConversation(conversation, NPC, Spawn, "Thanks again for all your help!")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/captain_steelforge/_exp03/exp03_rgn_greater_faydark/quest/captain_steelforge_spelunkle_c8071534.mp3", "Make sure Scout Spelunkle is okay.  I worry about the little guy.", "glare", 2067280972, 25682853, Spawn)
--]]

