--[[
	Script Name	: Quests/GreaterFaydark/spider_silk_for_brink.lua
	Script Purpose	: Handles the quest, "Spider Silk for Brink"
	Script Author	: Scatman
	Script Date	: 2009.03.28
	
	Zone       : Greater Faydark
	Quest Giver: Brink Trudger
	Preceded by: Growler Pelts for Brink (growler_pelts_for_brink.lua)
	Followed by: Shells of Protection (shells_of_protection.lua)
--]]


function Init(Quest)
	-- Brink's Legplates
	 -- Brink's Woven Band
	 -- Brink's Green Knot


	AddQuestStepKill(Quest, 1, "I should get some silkspinner webbing for Brink. The silkspinner spiders to the west, past the growlers and deer, should be a good source.", 5, 100, "I should get some silk webbing from the silkspinner spiders for Brink Trudger. The spiders are usually a bit of a distance to the west, past the growlers and deer.", 2251, 1140063, 1140062)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSpiders")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/brink_trudger/_exp03/exp03_rgn_greater_faydark/brink_trudger/brink_trudger009.mp3", "", "", 94899034, 3216566812, Player)
	AddConversationOption(conversation, "I'll be careful.")
	StartConversation(conversation, QuestGiver, Player, "Wonderful!  The silkspinner spiders usually live in an area to the west, past the growlers.  Be careful though, those silkspinners are dangerous fellers!")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSpiders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should have enough spider silk for Brink Trudger now.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I should have enough spider silk for Brink Trudger now.")
	
	AddQuestStepChat(Quest, 2, "I should give the silkspinner webs to Brink Trudger.", 1, "I should take these silkspinner webs to Brink Trudger so that he can use them to make fae clothing. He should be at his regular spot near the spirit bloom nursery.", 2251, 1140005)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to help Brink Trudger by getting him silkspinner webbing. The hides and silk should go a long way to outfitting adventurers with robes and cloth armor.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSpiders(Quest, QuestGiver, Player)
	end
end
