--[[
    Script Name    : Quests/RuinsofVarsoon/half_pint_help.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.22 04:01:56
    Script Purpose : 

        Zone       : RuinsofVarsoon
        Quest Giver: Dibble Rootweaver
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Find Dibble's satchel.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 402, 2560011)
	AddQuestStepKill(Quest, 2, "Find the dull metal fragment samples.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 1085, 2560016)
	AddQuestStepKill(Quest, 3, "Find a bar of indescribable metal.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 730, 2560000)
	AddQuestStepKill(Quest, 4, "Find the traveling alchemy kit.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 31, 2560060)
	AddQuestStepKill(Quest, 5, "Find a jar of blue fluid.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 359, 2560027)
	AddQuestStepKill(Quest, 6, "Find the research manual.", 1, 40, "I need to recover the key material components that Dibble had taken from him when he was imprisoned. The stuff has to be around here some where, or some of these creatures down here have it.", 720, 2560029)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_Bag")
	AddQuestStepCompleteAction(Quest, 2, "step2_complete_Metal")
	AddQuestStepCompleteAction(Quest, 3, "step3_complete_Bar")
	AddQuestStepCompleteAction(Quest, 4, "step4_complete_Flask")
	AddQuestStepCompleteAction(Quest, 5, "step5_complete_Jar")
	AddQuestStepCompleteAction(Quest, 6, "step6_complete_Tome")
end

function step1_complete_Bag(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found Dibble's satchel.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end
function step2_complete_Metal(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found the dull metal fragment samples.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function step3_complete_Bar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a bar of indescribable metal.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function step4_complete_Flask(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've found the traveling alchemy kit.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end
function step5_complete_Jar(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found a jar of blue fluid.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function step6_complete_Tome(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've found the research manual.")

	if QuestIsComplete(Player, 5448) then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I found all of Dibble's components now I'll I have to do is deliver it to his master.")
    UpdateQuestZone(Player, "Baubbleshire")
	AddQuestStepChat(Quest, 7, "I need to get this stuff to Tailor Peona.", 1, "Now that I've found all of this stuff I need to take it to his master; Tailor Peona in the Baubbleshire village, in Qeynos.", 0, 2380006) 
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end


function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "	I given the items to Tailor Peona.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delivered all of the components to Dibbles master.")
	
	UpdateQuestDescription(Quest, "I was able to gather all of the components that the halfling had lost down in the Ruins of Varsoon, and deliver them to his master. What a peculiar little halfling. I wonder how he is doing, and if he's made his way out of that cell yet?")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_Bag(Quest, QuestGiver, Player)
	elseif Step == 2 then
		step2_complete_Metal(Quest, QuestGiver, Player)
	elseif Step == 3 then
		step3_complete_Bar(Quest, QuestGiver, Player)
		elseif Step == 4 then
		step4_complete_Flask(Quest, QuestGiver, Player)
	elseif Step == 5 then
		step5_complete_Jar(Quest, QuestGiver, Player)
	elseif Step == 6 then
		step6_complete_Tome(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Multiple_Steps_Complete(Quest, QuestGiver, Player)
	end
end
