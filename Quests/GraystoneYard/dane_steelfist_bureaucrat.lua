--[[
	Script Name		:	dane_steelfist_bureaucrat.lua
	Script Purpose	:	Handles the quest, "Dane Steelfist, Bureaucrat"
	Script Author	:	Dorbin
	Script Date		:	3/10/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graystone Yard
	Quest Giver		:	Dane Steelfist
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill five lowland badgers in Antonica.", 5, 100, "I need to get rid of five lowland badgers in Antonica for Dane Steelfist.", 124, 120213,121352)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest, "Antonica")	
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed five lowland badgers.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed five lowland badgers for Dane.")
    UpdateQuestZone(Quest, "Graystone Yard")
    
	AddQuestStepChat(Quest, 2, "I must report back to Dane in Graystone.", 1, "I need to report my progress back to Dane Steelfist in Graystone Yard.", 124, 2350037)
	AddQuestStepCompleteAction(Quest, 2, "Step2ChatComplete")
end	

function Step2ChatComplete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 2, "I reported back to Dane Steelfist.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I reported killing five lowland badgers to Dane.")   

    UpdateQuestZone(Quest, "Antonica")	    
	AddQuestStepKill(Quest, 3, "I must kill eight grizzled badgers in Antonica.", 8, 100, "I need to get rid of eight grizzled badgers in Antonica for Dane Steelfist.", 124, 121194,120014)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")

end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed eight grizzled badgers.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I killed eight grizzled badgers for Dane.")
    UpdateQuestZone(Quest, "Graystone Yard")
    
	AddQuestStepChat(Quest, 4, "I must report back to Steelfist in Graystone.", 1, "I need to report my progress back to Dane Steelfist in Graystone Yard.", 124, 2350037)
	AddQuestStepCompleteAction(Quest, 4, "Step4ChatComplete")
end		

function Step4ChatComplete(Quest, QuestGiver, Player)
 	UpdateQuestStepDescription(Quest, 4, "I reported back to Dane Steelfist.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I reported killing eight grizzled badgers to Dane.")   

    UpdateQuestZone(Quest, "Antonica")	    
	AddQuestStepKill(Quest, 5, "I must kill ten timber wolves in Antonica.", 10, 100, "I need to get rid of ten timber wolves in Antonica for Dane Steelfist.", 93, 121188,120008)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")

end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed ten timber wolves.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I killed ten timber wolves for Dane.")
    UpdateQuestZone(Quest, "Graystone Yard")
    
	AddQuestStepChat(Quest, 6, "I must report back to Steelfist in Graystone.", 1, "I need to report my progress back to Dane Steelfist in Graystone Yard and be done with him!", 93, 2350037)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end		


function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have killed five lowland badgers.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I killed five lowland badgers for Dane.")

	UpdateQuestDescription(Quest, "Dane Steelfist still has a lot to learn about being a bureaucrat, but I feel good that I helped him out -- without having to make a campaign contribution, either!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
     elseif Step == 2 then	    
        Step2ChatComplete(Quest, QuestGiver, Player)
    elseif Step == 3 then	    
        Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then
		Step4ChatComplete(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    Step5Complete(Quest, QuestGiver, Player)
    elseif Step == 6 then	    
        QuestComplete(Quest, QuestGiver, Player)
    end
end
