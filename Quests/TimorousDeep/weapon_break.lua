--[[
	Script Name	: Quests/TimorousDeep/weapon_break.lua
	Script Purpose	: Handles the quest, "Weapon Break"
	Script Author	: Scatman
	Script Date	: 2009.03.10
	
	Zone       : Timorous Deep
	Quest Giver: Gerwen Di'Ki
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	 -- Pridefeather Leggings
	 -- Geo-Parser's Leggings
	 -- Layered Scale Greaves
	 -- Raptor-scaled Leggings
	 -- Ritualist's Pants
	 -- Turf-hunter Breeches
	 -- Thulwun Defender's Greaves


	AddQuestStepSpell(Quest, 1, "I need to spray the weapons of Pyrrin Roost with acid.", 5, 100, ".", 287, 5018)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_SprayedAcid")

end

function Accepted(Quest, QuestGiver, Player)
	-- Acid
	if not HasItem(Player, 2931) then
		SummonItem(Player, 2931)
	end
	
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/diki/diki001.mp3", "", "", 2073303618, 4008999322, Player)
	AddConversationOption(conversation, "I will be swift.")
	StartConversation(conversation, QuestGiver, Player, "If we destroy these weapons, it will take more time for the Haoaerans to reinforce their assault force at Thulwun Station. They will need to rearm before moving on. Let us show them that two can play at the delay game.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_SprayedAcid(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have sprayed acid on the weapons in Pyrrin Roost.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Gerwen Di'Ki.", 1, ".", 0, 2630593)
	AddQuestStepCompleteAction(Quest, 2, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	-- remove Acid
	RemoveItem(Player, 2931)
	UpdateQuestDescription(Quest, "I've rusted the Haoaeran weapons laying around in Pyrrin Roost.")
	GiveQuestReward(Quest, Player)
end
