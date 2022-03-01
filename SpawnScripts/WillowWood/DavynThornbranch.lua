--[[
	Script Name	: SpawnScripts/WillowWood/DavynThornbranch.lua
	Script Purpose	: Davyn Thornbranch 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local WOOD_ELF_QUEST_1 = 213 -- Offering Help
local WOOD_ELF_QUEST_2 = 214 -- Tribute Leaves
local WOOD_ELF_QUEST_3 = 215 -- A Task for Davyn
local WOOD_ELF_QUEST_4 = 216 -- Tribute Flowers 
local WOOD_ELF_QUEST_5 = 217 -- A Tribute for Ulinir

function spawn(NPC)
	ProvidesQuest(NPC, WOOD_ELF_QUEST_3)
	ProvidesQuest(NPC, WOOD_ELF_QUEST_5)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
    if math.random(1, 100) <= 60 then
        choice = math.random(1,3)
         if choice ==1 then
         PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
         elseif choice ==3 then
         PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
        elseif choice ==4 then
         PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
         FaceTarget(NPC, Spawn)
        else
        PlayFlavor(NPC, "", "", "cough", 0, 0, Spawn)
         end
    end
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_1) then
		if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_2) then
			if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_3) then
				if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_4) then
					if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_5) then
						DeliveredTributeYet(NPC, Spawn, conversation)
					elseif HasQuest(Spawn, WOOD_ELF_QUEST_5) then
						DeliveredTributeYet(NPC, Spawn, conversation)
					else
						MeantTributeMine(NPC, Spawn)
					end
				elseif HasQuest(Spawn, WOOD_ELF_QUEST_4) then
					if GetQuestStep(Spawn, WOOD_ELF_QUEST_4) == 3 then
						HowGoesWorkOnTribute(NPC, Spawn, conversation)
					else
						Say(NPC, "Now that you've helped me you should go speak with Aelis again.", Spawn)
					end
				else
					Say(NPC, "Now that you've helped me you should go speak with Aelis again.", Spawn)
				end
			elseif HasQuest(Spawn, WOOD_ELF_QUEST_3) then
				if GetQuestStep(Spawn, WOOD_ELF_QUEST_3) == 6 then
					Say(NPC, "Now that you've helped me you should go speak with Aelis again.", Spawn)
				else
					FoundWolfYet(NPC, Spawn, conversation)
				end
			else
				IsMyTributeComplete(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, WOOD_ELF_QUEST_2) then
			if GetQuestStep(Spawn, WOOD_ELF_QUEST_2) == 1 or GetQuestStep(Spawn, WOOD_ELF_QUEST_2) == 2 then
				Say(NPC, "I hope you and Aelis are getting along well.", Spawn)
			elseif GetQuestStep(Spawn, WOOD_ELF_QUEST_2) == 3 then
				IsMyTributeComplete(NPC, Spawn, conversation)
			end
		else
			Say(NPC, "I hope you and Aelis are getting along well.", Spawn)
		end
	elseif HasQuest(Spawn, WOOD_ELF_QUEST_1) then
		if GetQuestStep(Spawn, WOOD_ELF_QUEST_1) == 1 then
			GoodDayToYou(NPC, Spawn, conversation)
		elseif GetQuestStep(Spawn, WOOD_ELF_QUEST_1) == 2 then
			Say(NPC, "I hope you and Aelis are getting along well.", Spawn)
		end
	else
		Say(NPC, "Sorry, I'm kind of busy right now.", Spawn)
	end
end

--------------------------------------------------------------------------------------------------------------------------------
--				QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function GoodDayToYou(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch001.mp3", "", "", 3860010631, 4122099989, Spawn)
	AddConversationOption(conversation, "How are you doing today?", "FineAndYou")
	AddConversationOption(conversation, "And to you.  Good-bye for now.")
	StartConversation(conversation, NPC, Spawn, "Good day to you.")
end

function FineAndYou(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch002.mp3", "", "", 316906143, 655236793, Spawn)
   AddConversationOption(conversation, "I feel wonderful.", "dlg_3_2")
   AddConversationOption(conversation, "I am well.", "dlg_3_2")
   AddConversationOption(conversation, "I am not so well.", "dlg_5_2")
   AddConversationOption(conversation, "I feel terrible.", "dlg_5_2")
   StartConversation(conversation, NPC, Spawn, "I am fine, and you?")
end

function dlg_3_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch003.mp3", "", "", 2401906927, 1079328143, Spawn)
   AddConversationOption(conversation, "Nothing too troubling, I hope.", "dlg_6_4")
   AddConversationOption(conversation, "I will be going then.")
   StartConversation(conversation, NPC, Spawn, "That is good to hear. I apologize for being terse, but I am in the middle of some thoughts.")
end

function dlg_5_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch004.mp3", "", "", 2608502735, 3672722454, Spawn)
   AddConversationOption(conversation, "Nothing too troubling, I hope.", "dlg_6_4")
   AddConversationOption(conversation, "I will be going then.")
   StartConversation(conversation, NPC, Spawn, "That is unfortunate, though without the dark there would be no light. I apologize for being terse, but I am in the middle of some thoughts.")
end

function dlg_6_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch005.mp3", "", "", 4284267619, 900168490, Spawn)
   AddConversationOption(conversation, "Is there anything I can do to help?", "dlg_6_4")
   StartConversation(conversation, NPC, Spawn, "Not troubling, no. But important, and thus hard not to worry about.")
end

function dlg_6_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch008.mp3", "", "", 1201358473, 1534683104, Spawn)
   AddConversationOption(conversation, "What must I do?", "dlg_6_5")
   StartConversation(conversation, NPC, Spawn, "I am working on a Feir'Dal tribute for my old friend Ulinir. He was a very dear friend; a tribute is the least I could do. Sadly I am unable to focus properly and have been unable to make any progress at all. I suppose it speaks of some inner turmoil on my part, but I hate to keep Ulinir waiting. If you could help me create his tribute I would be very grateful.")
end

function dlg_6_5(NPC, Spawn)
   SetStepComplete(Spawn, WOOD_ELF_QUEST_1, 1)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch009.mp3", "", "", 2426834769, 2651026217, Spawn)
   AddConversationOption(conversation, "I'll go speak with her.")
   StartConversation(conversation, NPC, Spawn, "I appreciate this more than you know. Go speak with Aelis. She should be on or near the docks. Tell her that you would like to help me create my tribute; she will know what to do.")
end

-------------------------------------------------------------------------------------------------------------------------------------------------------
--						QUEST 2
-------------------------------------------------------------------------------------------------------------------------------------------------------

function IsMyTributeComplete(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch010.mp3", "", "", 3747511411, 3979607357, Spawn)
	AddConversationOption(conversation, "Aelis said I needed to do a task for you as part of the tribute creation.", "dlg_12_1")
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Is my tribute complete?")
end

function dlg_12_1(NPC, Spawn)
	if HasQuest(Spawn, WOOD_ELF_QUEST_2) then
		SetStepComplete(Spawn, WOOD_ELF_QUEST_2, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch011.mp3", "", "", 20096395, 3481349416, Spawn)
	AddConversationOption(conversation, "She said it could be any task, large or small.", "IHaveOneThing")
	StartConversation(conversation, NPC, Spawn, "Hmm, that's a little humorous, considering the tribute is already a favor you're doing for me. What kind of task did you need to do for me?")
end

-------------------------------------------------------------------------------------------------------------------------------------------------------
--						QUEST 3
-------------------------------------------------------------------------------------------------------------------------------------------------------

function IHaveOneThing(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch012.mp3", "", "", 678144380, 633781914, Spawn)
	AddConversationOption(conversation, "Sure.", "CitizenReportedWolf")
	AddConversationOption(conversation, "No, I'll hold off for now.")
	StartConversation(conversation, NPC, Spawn, "I do have one thing you could do to satisfy Aelis' requirements, though it might be a little dangerous. Do you want to try?")
end

function CitizenReportedWolf(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch013.mp3", "", "", 539477564, 2851114968, Spawn)
	AddConversationOption(conversation, "I will speak with him immediately.", "OfferQuest3")
	AddConversationOption(conversation, "Perhaps another time.")
	StartConversation(conversation, NPC, Spawn, "A citizen reported seeing a wolf last night. Normally that isn't anything to worry about, but the behavior of this wolf was described as very, very aggressive. I am afraid Willow Wood may have a rabid wolf among its citizens. The initial report came from a man named Taval Zane. He is staying at the inn just just south of here. I suggest you start with him.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, WOOD_ELF_QUEST_3)
end

function FoundWolfYet(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, WOOD_ELF_QUEST_3) == 5 then
		AddConversationOption(conversation, "Yes, the wolf is dead.", "dlg_21_1")
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch014.mp3", "", "", 3240548911, 582138521, Spawn)
	AddConversationOption(conversation, "No, not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you found the wolf yet?")
end

function dlg_21_1(NPC, Spawn)
	SetStepComplete(Spawn, WOOD_ELF_QUEST_3, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch015.mp3", "", "", 1785285003, 1047753849, Spawn)
	AddConversationOption(conversation, "I am glad to have helped.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "I am sorry to have given you such a grim task. You have helped the village greatly, though.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch016.mp3", "", "", 2783457255, 1132022982, Spawn)
	AddConversationOption(conversation, "I shall.")
	StartConversation(conversation, NPC, Spawn, "I am glad you did help... Well, I guess you should be getting back to Aelis now.")
end

-----------------------------------------------------------------------------------------------------------------------
--			QUEST 4
-----------------------------------------------------------------------------------------------------------------------

function HowGoesWorkOnTribute(NPC, Spawn, conversation)
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch017.mp3", "", "", 846132167, 3864459263, Spawn)
	AddConversationOption(conversation, "You mean your tribute?", "MeantTributeMine")
	AddConversationOption(conversation, "I am not quite done.")
	StartConversation(conversation, NPC, Spawn, "How goes work on your tribute?")
end

function MeantTributeMine(NPC, Spawn)
	if HasQuest(Spawn, WOOD_ELF_QUEST_4) then
		SetStepComplete(Spawn, WOOD_ELF_QUEST_4, 3)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch018.mp3", "", "", 3806105401, 4200917967, Spawn)
	AddConversationOption(conversation, "Yes, I think I can do that.", "dlg_25_2")
	AddConversationOption(conversation, "No,  thank you.")
	StartConversation(conversation, NPC, Spawn, "I meant the tribute to be mine alone at first, but you and Aelis are the ones who made this tribute. It would be disrespectful for me to present it to Ulinir. I think you should use the tribute as your own and place it on Ulinir's grave. I know you didn't know him, but he was most certainly worthy. What do you say?")
end

---------------------------------------------------------------------------------------------------------------------------
--			QUEST 5
---------------------------------------------------------------------------------------------------------------------------

function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/davyn_thornbranch/qey_village05/quests/davyn_thornbranch/davyn_thornbranch019.mp3", "", "", 795265842, 2129977796, Spawn)
	AddConversationOption(conversation, "Very well; I shall do that now.", "OfferQuest5")
	AddConversationOption(conversation, "I have no time to do this now.")
	StartConversation(conversation, NPC, Spawn, "I was hoping you would say that. You can find Ulinir's grave in the Forest Ruins. His grave is outside of the ruins themselves, to the northeast of them. There is a river that runs under the actual ruins.  Ulinir's grave is at the end of that river.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, WOOD_ELF_QUEST_5)
end

function DeliveredTributeYet(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, WOOD_ELF_QUEST_5) then
		AddConversationOption(conversation, "Yes. Yes, I have.", "DeliveredTribute")
	end
	
	AddConversationOption(conversation, "No, I have not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you delivered the tribute yet?")
end

function DeliveredTribute(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You are welcome.")
	StartConversation(conversation, NPC, Spawn, "Good. Ulinir will know a small part of it is from me as such, he will accept you as a friend. Thank you again, friend.")
end