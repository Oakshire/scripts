--[[
    Script Name    : Quests/Hallmark/welcome_to_qeynos_citizen.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.31 12:10:43
    Script Purpose : Post Qeynos Citizenship Book Quest

        Zone       : Hallmark
        Quest Giver: Welcome to Qeynos, Citizen!
        Preceded by: None
        Followed by: 
    
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Mervos Stadrin in North Qeynos will tell me about collecting objects in Norrath.", 1, "I should read through my Qeynos' citizenship booklet.", 11, 2220015)
	AddQuestStepZoneLoc(Quest, 2, "I should pay my respects at the Claymore Plaza in North Qeynos.",10, "I should read through my Qeynos' citizenship booklet.", 11,292.73, -18.10, -20.88,222)
	AddQuestStepChat(Quest, 3, "I must see Sage Indis Surion in South Qeynos.", 10, "I should read through my Qeynos' citizenship booklet.", 11, 2310067)
	AddQuestStepZoneLoc(Quest, 4, "I should look inside the Tower of Vhalen in Antonica.",10, "I should read through my Qeynos' citizenship booklet.", 11,-1300, 38, 45,12)
	AddQuestStepChat(Quest, 5, "I should speak with Taskmaster Lynette in the lighthouse at Coldwind Point in Antonica.", 1, "I should read through my Qeynos' citizenship booklet.", 11, 121256)
	AddQuestStepChat(Quest, 6, "I must speak with Hwal Rucksif, a dwarf in Antonica.", 1, "I should read through my Qeynos' citizenship booklet.", 11, 120197)
	AddQuestStepChat(Quest, 7, "I should speak with Knight-Lieutenant Alesso near the castle in North Qeynos.", 1, "I should read through my Qeynos' citizenship booklet.", 11, 120083)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end
	
	
function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've learned about collections from Mervos Stadrin.")
	CheckProgress(Quest, QuestGiver, Player)
end


function Step2Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 2, "I have seen the Claymore Plaza.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step3Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 3, "I have visited the Sage who sells books in Qeynos.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 4, "I am sure to find something interesting in the Tower.")
   CheckProgress(Quest, QuestGiver, Player)
end


function Step5Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 5, "I've spoken with the Taskmaster.")
CheckProgress(Quest, QuestGiver, Player)
end


function Step6Complete(Quest, QuestGiver, Player)
    	UpdateQuestStepDescription(Quest, 6, "I have spoken with Hwal Rucksif.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step7Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 7, "I've spoken with Knight-Lieutenant Alesso.")
   CheckProgress(Quest, QuestGiver, Player)
end


function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5766, 1) and QuestStepIsComplete(Player, 5766, 2)  and QuestStepIsComplete(Player, 5766, 3) and 
    QuestStepIsComplete(Player, 5766, 4) and QuestStepIsComplete(Player, 5766, 5)  and QuestStepIsComplete(Player, 5766, 6) and QuestStepIsComplete(Player, 5766, 7)then
	UpdateQuestTaskGroupDescription(Quest, 1, "I should read the Conclusion of the booklet.")
	AddQuestStep(Quest, 8, "I've one last page to read in my citizenship book.", 1,100, "I've enjoyed reading about different ways I may be useful to Qeynos.",2500)
    AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
    end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "Long live Antonia Bayle!")
	UpdateQuestTaskGroupDescription(Quest, 2, "Being a citizen has many responsibilities for me.")

	UpdateQuestDescription(Quest, "While I might have learned these things on my own, it's thoughtful of the Queen to provide this information to the citizens of Qeynos.  Long live Antonia Bayle!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	Step1Complete(Quest, QuestGiver, Player)
    elseif Step == 2 then	    
    Step2Complete(Quest, QuestGiver, Player)
    elseif Step == 3 then	    
    Step3Complete(Quest, QuestGiver, Player)
    elseif Step == 4 then	    
    Step4Complete(Quest, QuestGiver, Player)
    elseif Step == 5 then	    
    Step5Complete(Quest, QuestGiver, Player)
    elseif Step == 6 then
	Step6Complete(Quest, QuestGiver, Player)
    elseif Step == 7 then
	Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
	QuestComplete(Quest, QuestGiver, Player)
	end
end