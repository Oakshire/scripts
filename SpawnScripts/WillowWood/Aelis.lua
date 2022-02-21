--[[
	Script Name	: SpawnScripts/WillowWood/Aelis.lua
	Script Purpose	: Aelis <Wood Elf Mentor>
	Script Author	: Scatman
	Script Date	: 2000.15.09
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local WOOD_ELF = 15
local QUEST_1 = 213 -- Offering Help
local QUEST_2 = 214 -- Tribute Leaves
local QUEST_3 = 215 -- A Task for Davyn
local QUEST_4 = 216 -- Tribute Flowers

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_4)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					Say(NPC, "You have done very well. The tribute is as much yours as it is Davyn's. Proud will be the one whom this tribute was made.", Spawn)
				elseif HasQuest(Spawn, QUEST_4) then
					if GetQuestStep(Spawn, QUEST_4) == 1 or GetQuestStep(Spawn, QUEST_4) == 2 then
						CollectedFlowersYet(NPC, Spawn, conversation)
					else
						Say(NPC, "You have done very well. The tribute is as much yours as it is Davyn's. Proud will be the one whom this tribute was made.", Spawn)
					end
				else
					DoneTaskForDavyn(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				if GetQuestStep(Spawn, QUEST_3) == 6 then
					DoneTaskForDavyn(NPC, Spawn, conversation)
				else
					GoSpeakWithDavyn(NPC, Spawn)
				end
			else
				GoSpeakWithDavyn(NPC, Spawn)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 1 or GetQuestStep(Spawn, QUEST_2) == 2 then
				CollectedLeavesYet(NPC, Spawn, conversation)
			elseif GetQuestStep(Spawn, QUEST_2) == 3 then
				GoSpeakWithDavyn(NPC, Spawn)
			end
		else
			TalkToDavynYet(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		TalkToDavynYet(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == WOOD_ELF then
			WelcomeToWW(NPC, Spawn, conversation)
		else
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis_intro000.mp3", "Please do not take this the wrong way, but I am here as a service to my own kind.", "no", 1689156608, 834688706, Spawn)

		end
	end
end

----------------------------------------------------------------------------------------------------------------
--									QUEST 1
----------------------------------------------------------------------------------------------------------------
function WelcomeToWW(NPC, Spawn, conversation)
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis_intro001.mp3", "", "", 1689156608, 834688706, Spawn)
	AddConversationOption(conversation, "I was told you could teach me.", "EagerToLearn")
	AddConversationOption(conversation, "Feir'Dal?", "FierDal")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Willow Wood. I am Aelis and you are Feir'Dal. I will do what I can to aid you.")
end

function EagerToLearn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis_intro003.mp3", "", "", 1752282825, 72417157, Spawn)
	AddConversationOption(conversation, "Where can I find him?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "You are eager to learn, that is good. Please, speak with Davyn Thornbranch. He may be able to teach you what I mean; he is learning just as you are. Offer to help him and let me know if he accepts.")
end

function FierDal(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- missing PlayFlavor() for this dialog
	AddConversationOption(conversation, "How does it go beyond that?", "EagerToLearn")
	StartConversation(conversation, NPC, Spawn, "You and I are Feir'Dal. Though it means many things it is -- at its simplest -- a reference to our race. But it goes far beyond that.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function TalkToDavynYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis001.mp3", "", "", 1460661066, 3904351206, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_2)) or (HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2) then
		AddConversationOption(conversation, "Yes, he did. He wants help making a tribute.", "KnowWhatTributeIs")
	end
	
	AddConversationOption(conversation, "I have yet to speak with him.")
	StartConversation(conversation, NPC, Spawn, "Hello, " .. GetName(Spawn) .. ". Did Davyn accept your offer of help?")
end

function KnowWhatTributeIs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis002.mp3", "", "", 2710331647, 1056979793, Spawn)
	AddConversationOption(conversation, "Yes, I do. How can I help Davyn?", "dlg_7_4")
	AddConversationOption(conversation, "No, could you explain it to me?", "dlg_7_2")
	AddConversationOption(conversation, "I need to take care of something else right now.")
	StartConversation(conversation, NPC, Spawn, "Do you know what a tribute is?")
end

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis003.mp3", "", "", 2920909291, 3805909367, Spawn)
	AddConversationOption(conversation, "Ah, that makes sense. How can I help Davyn?", "dlg_7_4")
	AddConversationOption(conversation, "So you craft tributes on behalf of others?", "dlg_7_3")
	AddConversationOption(conversation, "I will return later to speak of this.")
	StartConversation(conversation, NPC, Spawn, "A Feir'Dal tribute is a way to show reverence for something: friends, family, even nature itself. I am a tribute crafter; this is why Davyn sent you to me.")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis004.mp3", "", "", 300866981, 1075115385, Spawn)
	AddConversationOption(conversation, "And what can I do to help Davyn?", "dlg_7_4")
	AddConversationOption(conversation, "This is interesting, but I must be going.")
	StartConversation(conversation, NPC, Spawn, "Yes. When I receive such a request, I work with the one who wishes the tribute made and help them to create something worthy to offer.")
end

function dlg_7_4(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 2)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis005.mp3", "", "", 3161828172, 993857572, Spawn)
	AddConversationOption(conversation, "What is the first step?", "dlg_7_5")
	AddConversationOption(conversation, "I will help Davyn at a later time.")
	StartConversation(conversation, NPC, Spawn, "It is strange that Davyn does not wish to participate more in the creation of his own tribute, but he may do as he pleases. To help him, I will require certain things from you. Through these tasks, we will build not just the physical tribute, but the metaphysical as well.")
end

-----------------------------------------------------------------------------------------------------------------
--								QUEST 2
-----------------------------------------------------------------------------------------------------------------

function dlg_7_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis006.mp3", "", "", 3076127078, 4294098731, Spawn)
	AddConversationOption(conversation, "Ok.", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "First you must gather some leaves for the tribute. You should be able to find Dewdrop bushes all around the Willow Wood. Gather six of their leaves for me and I will use them in the creation of the tribute. Though the quality of the leaf itself does not matter, you will need to pick each leaf from a new plant, that is part of the ritual.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function CollectedLeavesYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis007.mp3", "", "", 2752158963, 3016049576, Spawn)
	
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, here they are.", "dlg_11_1")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you collected the leaves?")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis008.mp3", "", "", 4043232987, 1791181126, Spawn)
	AddConversationOption(conversation, "Thank you, what else must I do?", "DavynsTribute")
	AddConversationOption(conversation, "Thanks, I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "Ah yes, wonderful.")
end

function DavynsTribute(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis009.mp3", "", "", 502674397, 4117846239, Spawn)
	AddConversationOption(conversation, "I'll go ahead and do that.")
	StartConversation(conversation, NPC, Spawn, "Well, since this is Davyn's tribute, after all, I'd like you to do a task for him. It can be anything, really, from a grand assignment to a menial task. I just ask that you do it on his behalf.")
end

------------------------------------------------------------------------------------------------------------------------
--			QUEST 3
------------------------------------------------------------------------------------------------------------------------

function GoSpeakWithDavyn(NPC, Spawn)
	Say(NPC, "Please go speak with Davyn. I need you to perform a task for him to help the tribute creation process.", Spawn)
end

function DoneTaskForDavyn(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis010.mp3", "", "", 4241338339, 1919583845, Spawn)
	
	if (HasCompletedQuest(Spawn, QUEST_3) and not HasCompletedQuest(Spawn, QUEST_4)) or (HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 6) then
		AddConversationOption(conversation, "I have.", "dlg_22_1")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you done a task for Davyn?")
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis011.mp3", "", "", 105540976, 246996897, Spawn)
	AddConversationOption(conversation, "He had me find and put down a rabid wolf that had been living in the Willow Wood.", "dlg_22_2")
	AddConversationOption(conversation, "I'll tell you about it later.")
	StartConversation(conversation, NPC, Spawn, "And what did he have you do? Tell me about it.")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis012.mp3", "", "", 3096119908, 999587126, Spawn)
	AddConversationOption(conversation, "Ah I see. Well, I approached Davyn and he asked me how his tribute was coming. I told him  that I needed to perform a task for him first. He mentioned that he had heard reports of a rabid wolf living in the Willow Wood. He told me my task would be to find this wolf and put it out of its misery.", "dlg_22_3")
	AddConversationOption(conversation, "Let me gather my thoughts first.")
	StartConversation(conversation, NPC, Spawn, "My apologies, I wasn't entirely clear. I need you to tell me, in detail, what you did for Davyn. This is part of the Feir'Dal tribute creation process, tell it in any way you wish, but be thorough.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis013.mp3", "", "", 4191190987, 207693875, Spawn)
	AddConversationOption(conversation, "A little scared.", "dlg_22_4")
	AddConversationOption(conversation, "Sad, it is an unfortunate task to give anyone.", "dlg_22_4")
	AddConversationOption(conversation, "I was excited about the promise of battle.", "dlg_22_4")
	AddConversationOption(conversation, "Eager at first, but reluctant later.", "dlg_22_4")
	StartConversation(conversation, NPC, Spawn, "And how did that make you feel?")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis014.mp3", "", "", 2061458052, 104886246, Spawn)
	AddConversationOption(conversation, "Davyn told me to speak with a man named Taval Zane in the local inn who had reported seeing the rabid wolf. Taval was mildly afraid. He told me that after he fled from the wolf, he saw it heading toward the scribe's shop.", "dlg_22_5")
	StartConversation(conversation, NPC, Spawn, "Interesting. Please, go on.")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis015.mp3", "", "", 1914325094, 2874364836, Spawn)
	AddConversationOption(conversation, "No, but I wish I had been more supportive.", "dlg_22_6")
	AddConversationOption(conversation, "Yes, I think I comforted him.", "dlg_22_6")
	AddConversationOption(conversation, "He was very thankful to have my help.", "dlg_22_6")
	AddConversationOption(conversation, "No, but he didn't need it.", "dlg_22_6")
	StartConversation(conversation, NPC, Spawn, "Did you comfort Mr. Zane?")
end

function dlg_22_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis016.mp3", "", "", 2261205557, 1048737492, Spawn)
	AddConversationOption(conversation, "Taval mentioned that Jana Windstream spends a lot of time in front of the scribe's shop and might have seen something. She didn't seem very worried as she hadn't seen the wolf.  She had noticed a cart that had been rummaged through, though, and pointed me in that direction.", "dlg_22_7")
	StartConversation(conversation, NPC, Spawn, "I see.  Continue.")
end

function dlg_22_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis017.mp3", "", "", 2117559013, 805448312, Spawn)
	AddConversationOption(conversation, "There were tracks leading from the cart into the hills behind the scribe's shop.", "dlg_22_8")
	StartConversation(conversation, NPC, Spawn, "And what happened with the cart?")
end

function dlg_22_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis018.mp3", "", "", 404983457, 991180338, Spawn)
	AddConversationOption(conversation, "I was very nervous.", "dlg_22_9")
	AddConversationOption(conversation, "I may have been a little on edge.", "dlg_22_9")
	AddConversationOption(conversation, "Not particularly, no. I was mostly interested in getting the job done.", "dlg_22_9")
	AddConversationOption(conversation, "I was happy that I was getting closer.", "dlg_22_9")
	StartConversation(conversation, NPC, Spawn, "Were you nervous as you followed the tracks?")
end

function dlg_22_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis019.mp3", "", "", 3905097708, 3634838390, Spawn)
	AddConversationOption(conversation, "As I approached the hills, the beast charged. It wasn't a long fight and in the end the wolf was slain.", "dlg_22_10")
	StartConversation(conversation, NPC, Spawn, "Hmmm... Please, continue.")
end

function dlg_22_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis020.mp3", "", "", 616226385, 3796350916, Spawn)
	AddConversationOption(conversation, "Yes. I am sure there must have been a better way to save the beast.", "dlg_22_11")
	AddConversationOption(conversation, "I am sad that I had to do what I did, but it was the only way.", "dlg_22_11")
	AddConversationOption(conversation, "In nature, beasts kill when it is necessary to survive. This beast posed a threat and it was necessary to remove that threat.", "dlg_22_11")
	AddConversationOption(conversation, "The beast wouldn't have thought twice about killing me, so I give it no such courtesy.", "dlg_22_11")
	StartConversation(conversation, NPC, Spawn, "Now that it is done, do you feel any regret?")
end

function dlg_22_11(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 6)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis021.mp3", "", "", 236275225, 3590188297, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_22_12")
	StartConversation(conversation, NPC, Spawn, "That is quite interesting. I believe your story has inspired me to write the tribute. While I put my thoughts on paper, I would like you to gather one final component for the tribute.")
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--				Quest 4
-----------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_22_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis021a.mp3", "", "", 1835381207, 2544203225, Spawn)
	AddConversationOption(conversation, "Ok.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Flowers grow all about the Willow Wood. Please find some and pick them.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function CollectedFlowersYet(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis022.mp3", "", "", 1790256912, 2762282162, Spawn)
	
	if HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 2 then
		AddConversationOption(conversation, "I did, here they are.", "dlg_24_1")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you gather the flowers?")
end

function dlg_24_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/aelis/qey_village05/quests/aelis/aelis023.mp3", "", "", 1498336475, 1966922553, Spawn)
	AddConversationOption(conversation, "Thank you for your help.")
	StartConversation(conversation, NPC, Spawn, "Beautiful. Perfect. The tribute is complete, you may take it to Davyn now.")
end