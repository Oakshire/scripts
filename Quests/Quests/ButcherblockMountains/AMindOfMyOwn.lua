--[[
	Script Name		:	AMindofMyOwn.lua
	Script Purpose	:	Handles the quest, "A Mind of My Own"
	Script Author	:	jakejp
	Script Date		:	6/10/2018
	Script Notes	:	

	Zone			:	Butcherblock Mountains
	Quest Giver		:	Talvrae T'Zyth
	Preceded by		:	None
	Followed by		:	None
--]]

local TerratrodderChuck = 45400

function Init(Quest)
	AddQuestStep(Quest, 1, "I must place the food near a Yarpsnarl kobold to get it to eat.", 1, 100, "I must use Talvrae's Dish, and place it near a kobold to coax it to eat.", 305)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "It seems that the charm worked, and I now have control over a kobold.")

	AddQuestStepKill(Quest, 2, "The kobold is under my control.  I should see if I can make him attack other kobolds.", 12, 100, "I must use Talvrae's Dish, and place it near a kobold to coax it to eat.", 452, 1080092, 1080095, 1080099, 1080107, 1080108, 1080111, 1080247, 1080248, 1080251, 1080258, 1080268, 1080269, 1080311, 1080315, 1080316, 1080317, 1080321, 1080326, 1080327, 1080335, 1080341, 1080372, 1080383, 1080423, 1080424, 1080425, 1080426, 1080428, 1080431, 1080432, 1080612, 1080616, 1080617, 1080663, 1080701, 1080764, 1080787, 1081102, 1081103, 1081104, 1081121, 1081122, 1081124, 1081138, 1081141, 1081142, 1081143, 1081145, 1081146, 1081148, 1081150, 1081151, 1081153, 1081154, 1081155, 1081170)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "It appears to have worked quite well.  I should report back to Talvrae with my findings.")

	AddQuestStepChat(Quest, 3, "Return to Talvrae T'Zyth at the Highlands Outpost.", 1, "I must use Talvrae's Dish, and place it near a kobold to coax it to eat.", 249, 1081107)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I was able to help Talvrae T'Zyth prove her experiment.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It appears that Talvrae's plan was a qualified success.")

	UpdateQuestDescription(Quest, "It appears that Talvrae's plan was a qualified success.  In spite of her sour demeanor, she seemed genuinely pleased that the experiment went smoothly.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	SummonItem(Player, TerratrodderChuck, 1)
	PlayFlavor(QuestGiver, "talvrae_t_zyth/_exp03/exp03_rgn_butcherblock/talvrae/qst_talvrae_008.mp3", "", "", 1081612079, 3658293484, Player)
	AddConversationOption(conversation, "I see.  Well then, I will return and let you know how things went.")
	StartConversation(conversation, QuestGiver, Player, "While I have no reason to question my own magic craft, I don't know how well the enchantment will work on what is essentially a simple creature.  It might just go primal and attack everything nearby, or might just run off to the hills.  I wouldn't attempt walking too far from the camp this time, as I don't know how long the enchantment will last.")
end

function Declined(Quest, QuestGiver, Player)

end

function Deleted(Quest, QuestGiver, Player)
        RemoveItem(Player, TerratrodderChuck)
end