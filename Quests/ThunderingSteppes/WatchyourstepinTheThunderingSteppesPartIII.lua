--[[
    Script Name    : Quests/ThunderingSteppes/WatchyourstepinTheThunderingSteppesPartIII.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.05 10:07:29
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Jacques (2490212)
        Preceded by: Watch your step in The Thundering Steppes, Part II
        Followed by: Watch your step in The Thundering Steppes, Part IV
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to take this package to Brianna in Thundermist village. It looks to be important.", 30, "I have a package to take to Brianna in Thundermist village.", 11, 582.28, 2.81, -168.36)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	local wolf1 = SpawnMob(GetZone(Player), 2490679,  0, 586.24, 1.23, -158.22, 88.04)
	local wolf2 = SpawnMob(GetZone(Player), 2490679,  0, 585.60, 1.43, -163.06, 117.90)
	
	if wolf1 ~= nil then
		Attack(wolf1, Player)
	end
	
	if wolf2 ~= nil then
		Attack(wolf2, Player)
	end
	
	Step1CompleteUpdate(Quest, QuestGiver, Player)
end

function Step1CompleteUpdate(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was chased by dogs and dropped the package on the way to Thundermist village.")

	AddQuestStepChat(Quest, 2, "I dropped the package and some of the items inside fell out. At least I made it away from those dogs. I should take what's left to Brianna.", 1, "I have a package to take to Brianna in Thundermist village.", 11, 2490170)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have taken the Package to Brianna In Thundermist village.")

	AddQuestStep(Quest, 3, "I still need to get Brianna her replacement items so I can get the delivery receipt from her and take it back to Jacques.", 1, 100, "Brianna will not give me my delivery receipt until I have replaced the items that were in the package.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I finally got all the items to Brianna.")

	AddQuestStepChat(Quest, 4, "Now that I have the receipt from Brianna, I need to take it to Jacques.", 1, "I should return to Jacques and get this receipt from Brianna to him. I hope he will compensate me for those Tin Long Swords.", 11, 2490212)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "This delivery is for Brianna in Thundermist Village. Since we're delivering a package this time, you'll need to get her to sign a receipt for it before you come back.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1CompleteUpdate(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	end
end