--[[
	Script Name		: 	SpawnScripts/Darklight/LaexyraYBarriath.lua
	Script Purpose	: 	Laexyra Y'Barriath (340075)
	Script Author	: 	Cynnar
	Script Date		: 	2016.01.01
	Script Notes	: 	Report to Zezas is not implemented yet since it requires you to go into Neriak.
--]]

local PurposefulTrinkets = 149
local PublicService = 150
local AFriendlyReminder = 151
local Reaping = 152
local Condemned = 153
local ContinuingAssistance = 154
local ReporttoZezas = 159

function spawn(NPC)
	ProvidesQuest(NPC, PurposefulTrinkets)
	ProvidesQuest(NPC, PublicService)
	ProvidesQuest(NPC, AFriendlyReminder)
	ProvidesQuest(NPC, Reaping)
	ProvidesQuest(NPC, Condemned)
	ProvidesQuest(NPC, ContinuingAssistance)
	--ProvidesQuest(NPC, ReporttoZezas)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasQuest(Spawn, PurposefulTrinkets) and not HasCompletedQuest(Spawn, PurposefulTrinkets) then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "tapfoot", 0, 0, Spawn)
		AddConversationOption(conversation, "Reported to you?", "Quest_PurposefulTrinkets")
		StartConversation(conversation, NPC, Spawn, "" .. GetName(Spawn) .. ", it is about time you reported to me.")
	elseif HasQuest(Spawn, PurposefulTrinkets) and not HasCompletedQuest(Spawn, PurposefulTrinkets) then
		PurposefulTrinkets_00(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, PurposefulTrinkets) and not HasCompletedQuest(Spawn, PublicService) then
		if not HasQuest(Spawn, PublicService) then
			PurposefulTrinkets_00(NPC, Spawn)
		else
			PublicService_00(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, PublicService) and not HasCompletedQuest(Spawn, AFriendlyReminder) then
		if not HasQuest(Spawn, AFriendlyReminder) then
			PublicService_00(NPC, Spawn)
		else
			AFriendlyReminder_00(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, AFriendlyReminder) and not HasCompletedQuest(Spawn, Reaping) then
		if not HasQuest(Spawn, Reaping) then
			AFriendlyReminder_00(NPC, Spawn)
		else
			Reaping_00(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, Reaping) and not HasCompletedQuest(Spawn, Condemned) then
		if not HasQuest(Spawn, Condemned) then
			Reaping_00(NPC, Spawn)
		else
			Condemned_00(NPC, Spawn)
		end
	elseif HasCompletedQuest(Spawn, Condemned) and not HasCompletedQuest(Spawn, ContinuingAssistance) then
		if not HasQuest(Spawn, ContinuingAssistance) then
		    Say(NPC, "CA offer")
			Quest_ContinuingAssistance_01(NPC, Spawn)
		else
		    Say(NPC, "test")
			Quest_Condemned_03(NPC, Spawn)
		end
	else
		Say(NPC, "Report to Zezas is not implemented yet because Neriak is not ready for visitors yet..")
	end
end

--------------------------------------------------------------------------------------
--			Purposeful Trinkets
--------------------------------------------------------------------------------------

function PurposefulTrinkets_00(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		if not HasCompletedQuest(Spawn, PurposefulTrinkets) and GetQuestStep(Spawn, PurposefulTrinkets) ~= 2 then
			AddConversationOption(conversation, "Not yet.")
		else
			AddConversationOption(conversation, "Yes.", "Quest_PurposefulTrinkets_04")
		end
	StartConversation(conversation, NPC, Spawn, "Have you collected the trinkets?.")
end

function Quest_PurposefulTrinkets(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I have!", "Quest_PurposefulTrinkets_01")
	AddConversationOption(conversation, "No.", "Quest_PurposefulTrinkets_Decline")
	StartConversation(conversation, NPC, Spawn, "I am Laexyra Y'Barriath, Commander of the Dread Guard forces in the Darklight Wood. You have dedicated yourself to The City of Hate and Queen Cristanos, have you not?")
end

function Quest_PurposefulTrinkets_Decline(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "", "", "brandish", 0, 0, Spawn)
	StartConversation(conversation, NPC, Spawn, "Then begone before I am forced to clean you from my blade!")
end

function Quest_PurposefulTrinkets_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What is the current threat?", "Quest_PurposefulTrinkets_02")
	StartConversation(conversation, NPC, Spawn, "Good. Neriak requires true statesmen and women who will do all they can to further their city. In my case, I am here in Darklight battling the forces--natural or otherwise--that threaten our city and her throne.")
end

function Quest_PurposefulTrinkets_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What is the plan?", "Quest_PurposefulTrinkets_03")
	StartConversation(conversation, NPC, Spawn, "The never ending tide of undead. New corpses climb from the ground every day and those that we kill do not stay dead for long. I believe, with a little work, we can at least keep those we kill from coming back. But nothing is certain.")
end

function Quest_PurposefulTrinkets_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can do that.", "QuestOffer_PurposefulTrinkets")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Search the field to our south. The halflings and elf rangers who died there brought many things into our forest, including small tokens meant to remind them of home--to remind them of what they were fighting for. Collect some of these for me.")
end

function QuestOffer_PurposefulTrinkets(NPC, Spawn)
	OfferQuest(NPC, Spawn, PurposefulTrinkets)
end

function Quest_PurposefulTrinkets_04(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasCompletedQuest(Spawn, PurposefulTrinkets) then
		SetStepComplete(Spawn, PurposefulTrinkets, 2)	
	end
	
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "I am willing.", "Quest_PublicService")
	AddConversationOption(conversation, "An order is an order.", "Quest_PublicService")
	StartConversation(conversation, NPC, Spawn, "Excellent. It will take me some time to prepare them for their purpose, however. In the meantime, the undead must be culled. Are you willing?")
end

--------------------------------------------------------------------------------------
--			Public Service
--------------------------------------------------------------------------------------

function PublicService_00(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1007.mp3", "", "", 0, 0, Spawn)
		if not HasCompletedQuest(Spawn, PublicService) and GetQuestStep(Spawn, PublicService) ~= 3 then
			AddConversationOption(conversation, "Not yet.")
		else
			AddConversationOption(conversation, "Temporarily, yes.", "Quest_PublicService_01")
		end
	StartConversation(conversation, NPC, Spawn, "Have you taken care of the undead?")
end

function Quest_PublicService(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right.", "QuestOffer_PublicService")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "Good. North of here walk the undead remains of our Teir'Dal soldiers, now being used against us. Kill the defenders and soldiers so that we may have some respite.")
end

function QuestOffer_PublicService(NPC, Spawn)
	OfferQuest(NPC, Spawn, PublicService)
end

function Quest_PublicService_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasCompletedQuest(Spawn, PublicService) then
		SetStepComplete(Spawn, PublicService, 3)
	end
	
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll make sure he understands the reminder.", "QuestOffer_AFriendlyReminder")
	AddConversationOption(conversation, "Maybe someone else would be more interested in doing this for you.")
	StartConversation(conversation, NPC, Spawn, "I've just received news regarding the recent undead attacks on this outpost. A Thexian necromancer by the name Kronryn N'Xytyl has been spotted near the Field of Ruin. I have little doubt that he is singularly responsible for raising our ancient slain foes against us once more. Remind him that his presence will not be tolerated in these woods.")
end

--------------------------------------------------------------------------------------
--			A Friendly Reminder
--------------------------------------------------------------------------------------

function AFriendlyReminder_00(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		if not HasCompletedQuest(Spawn, AFriendlyReminder) and GetQuestStep(Spawn, AFriendlyReminder) ~= 2 then
			AddConversationOption(conversation, "Not yet.")
		else
			AddConversationOption(conversation, "Swiftly.", "Quest_AFriendlyReminder_01")
		end
	StartConversation(conversation, NPC, Spawn, "Did you deliver the message?")
end

function QuestOffer_AFriendlyReminder(NPC, Spawn)
	OfferQuest(NPC, Spawn, AFriendlyReminder)
end

function Quest_AFriendlyReminder(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "How are we to do that?", "Quest_AFriendlyReminder_01")
	StartConversation(conversation, NPC, Spawn, "Such is a befitting end to a trespasser who foolishly dared to defy our rule of these lands. Now it is time to clean up the mess he has made.")
end

function Quest_AFriendlyReminder_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, AFriendlyReminder, 2)
	
	AddConversationOption(conversation, "How does it work?", "Quest_AFriendlyReminder_02")
	StartConversation(conversation, NPC, Spawn, "With the trinkets you collected. I've prepared them to capture the spirits of some of the fallen soldiers. These specially-prepared trinkets will pull the spirit of their owners together, into something more tangible.")
end

function Quest_AFriendlyReminder_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	SetStepComplete(Spawn, AFriendlyReminder, 2)
	
	AddConversationOption(conversation, "So, I am to kill their spirits?", "Quest_AFriendlyReminder_03")
	StartConversation(conversation, NPC, Spawn, "You need only walk among the stout cadavers and fallen rangers with it. Instead of a mindless zombie it will actually BE the spirit of the fallen soldier that materializes for you. This means that if we get rid of this spirit, it will no longer contribute to the undead menace.")
end

function Quest_AFriendlyReminder_03(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if not HasCompletedQuest(Spawn, AFriendlyReminder) then
		SetStepComplete(Spawn, AFriendlyReminder, 2)
	end
	
	AddConversationOption(conversation, "All right.", "QuestOffer_Reaping")
	AddConversationOption(conversation, "I'm not interested.")
	StartConversation(conversation, NPC, Spawn, "No, they wouldn't stay dead. We can, however, trap their spirits, and that's just what I'd like you to do.")
end

--------------------------------------------------------------------------------------
--			Reaping
--------------------------------------------------------------------------------------

function QuestOffer_Reaping(NPC, Spawn)
	OfferQuest(NPC, Spawn, Reaping)
end

function Reaping_00(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra021.mp3", "", "", 3742143393, 3604889298, Spawn)
		if not HasCompletedQuest(Spawn, Reaping) and GetQuestStep(Spawn, Reaping) ~= 2 then
			AddConversationOption(conversation, "Not yet.")
		else
			AddConversationOption(conversation, "I did.", "Quest_Reaping_01")
		end
	StartConversation(conversation, NPC, Spawn, "Did you trap the spirits?")
end

function Quest_Reaping_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, Reaping, 2)
	
	AddConversationOption(conversation, "What do you have in mind?", "Quest_Reaping_02")
	StartConversation(conversation, NPC, Spawn, "That pleases me," .. GetName(Spawn) .. ". Now to ensure they do not return to threaten us further.")
end

function Quest_Reaping_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can put the spirits in the well.", "QuestOffer_Condemned")
	AddConversationOption(conversation, "Maybe later.")
	StartConversation(conversation, NPC, Spawn, "That we release these spirits near the Wellspring of Nightmares thus trapping them in perpetual torment. It's similar to their existence now, but with the added benefit that they have no corporeal connection to this world and are thus no longer annoying us.")
end

--------------------------------------------------------------------------------------
--			Condemned
--------------------------------------------------------------------------------------

function QuestOffer_Condemned(NPC, Spawn)
	OfferQuest(NPC, Spawn, Condemned)
end

function Condemned_00(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1007.mp3", "", "", 0, 0, Spawn)
		if not HasCompletedQuest(Spawn, Condemned) and GetQuestStep(Spawn, Condemned) ~= 2 then
			AddConversationOption(conversation, "Not yet.")
		else
			AddConversationOption(conversation, "I have.", "Quest_Condemned_01")
		end
	StartConversation(conversation, NPC, Spawn, "Have you released the spirits yet?")
end

function Quest_Condemned_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/neriak/laexyra_y_barriath/darklight_wood/tvatar_post/laexyra/laexyra026.mp3", "", "", 3005578756, 2486978605, Spawn)
	AddConversationOption(conversation, "None. They are all trapped.", "Quest_Condemned_02")
	StartConversation(conversation, NPC, Spawn, "And none of them escaped?")
end

function Quest_Condemned_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, Condemned, 2)
	
	AddConversationOption(conversation, "You're welcome.", "Quest_Condemned_03")
	StartConversation(conversation, NPC, Spawn, "Mmm. Beautiful, beautiful. I believe this can be used to rid ourselves of the stout cadavers and fallen rangers. A more appropriate method of dealing with the Teir'Dal spirits will have to be found, however. But this is a very big step in the right direction. Thank you," .. GetName(Spawn) .. ".")
end

--function Quest_Condemned_03(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
--	conversation = CreateConversation()
--	
--	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1007.mp3", "", "", 0, 0, Spawn)
--	AddConversationOption(conversation, "Is there anything I can help with?", "Quest_ContinuingAssistance_01")
--	AddConversationOption(conversation, "I hope I have been helpful enough that you speak well of me to others.", "Quest_ReporttoZezas_01")
--	AddConversationOption(conversation, "Good luck with that.")
--	StartConversation(conversation, NPC, Spawn, "Now my only question is what problem to tackle next.")
--end

--------------------------------------------------------------------------------------
--			Continuing Assistance
--------------------------------------------------------------------------------------

function Quest_ContinuingAssistance_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right.", "Quest_ContinuingAssistance_02")
	StartConversation(conversation, NPC, Spawn, "Actually, yes, I could use your help. I have two correspondences I need delivered immediately. The first goes to Malyl N'Vazin. The second goes to a sniveling wretch named, Vornlin B'Vytyl. You can find them both at Wanderlust Fair.")
end

function Quest_ContinuingAssistance_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay, I will go find them.", "QuestOffer_ContinuingAssistance")
	AddConversationOption(conversation, "This task doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "To get to the Wanderlust Fair, follow the path west. When it splits, take the right fork. You will pass over the Searing Tendril River before the path splits again, this time go left. That will lead you right past the fair on Nightshadow Rise.")
end

function Temp_ContinuingAssistance_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "OK.", "QuestOffer_ContinuingAssistance")
	StartConversation(conversation, NPC, Spawn, "This is where the Accept quest will go, but I have not completed the quest Continuing Assistance yet.")
end

    --AddConversationOption(conversation, "All right.", "QuestOffer_Reaping")

function QuestOffer_ContinuingAssistance(NPC, Spawn)
	OfferQuest(NPC, Spawn, ContinuingAssistance)
end

--------------------------------------------------------------------------------------
--			Report to Zezas
--------------------------------------------------------------------------------------

function Quest_ReporttoZezas_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Who does it go to?", "Quest_ReporttoZezas_02")
	StartConversation(conversation, NPC, Spawn, "Quite. On that note, in fact, I've something I'd like you to deliver to a friend of mine within Neriak," .. GetName(Spawn) .. ".")
end

function Quest_ReporttoZezas_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "All right, I will deliver it.", "Temp_ReporttoZezas")
	AddConversationOption(conversation, "Maybe at a later date.")
	StartConversation(conversation, NPC, Spawn, "Zezas X'Zauzin. He should be just inside Neriak.")
end

function Temp_ReporttoZezas(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "OK.")
	StartConversation(conversation, NPC, Spawn, "This is where the Accept quest will go, but I have not completed the quest Report to Zezas because Neirak is not spawned.")
end

function QuestOffer_ReporttoZezas(NPC, Spawn)
	OfferQuest(NPC, Spawn, Condemned)
end