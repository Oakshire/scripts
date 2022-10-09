--[[
    Script Name    : Quests/Hallmark/archetype_selection.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.09 06:09:51
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: GarvenInvisibleCube
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
    AddQuestStepChat(Quest, 1, "I need to talk to Garven Tralk", 1, "I need to talk to Garven Tralk", 11, 3250020)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    QuestReturnNPC(Quest, 3250020)
end

function Accepted(Quest, QuestGiver, Player)
		InstructionWindow(Player, 10.0, "Garven Tralk can guide you on what to do next.", "voiceover/english/narrator/tutorial_island02/narrator_031_328946a9.mp3", 933085482, 646811402, "introduction", "", "continue")
		ShowWindow(Player, "MainHUD.StartMenu", 1)
		FlashWindow(Player, "MainHUD.StartMenu.help", 10.0)  
end

function Declined(Quest, QuestGiver, Player)

end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have talked to Garven Tralk.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have talked to Garven Tralk.")

	UpdateQuestDescription(Quest, "I have reported my profession to Garven Tralk.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
