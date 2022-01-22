--[[
    Script Name    : Quests/Baubbleshire/spindlecogs_new_job_.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.21 02:01:31
    Script Purpose : 

        Zone       : Baubbleshire
        Quest Giver: Tinkerer Spindlecog
        Preceded by: None
        Followed by: Reconstructed manually
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must get ten fledgling antelope sinews in the Thundering Steppes.", 10, 100, "Tinkerer Spindlecog needs ten fledgling antelope sinews from the Thundering Steppes.", 99, 2490056)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	UpdateQuestZone(Quest, "Thundering Steppes")
end

function Accepted(Quest, QuestGiver, Player)
    conversation = CreateConversation()
    FaceTarget(QuestGiver, Player)
	PlayFlavor(QuestGiver, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog003.mp3", "", "no", 2508515239, 4260547544, Player)
	AddConversationOption(conversation, "I'll be back with these items.")
	AddConversationOption(conversation, "Try not to blow anything up.")
	StartConversation(conversation, QuestGiver, Player, "Of course not!  That's horribly inefficient!  Why would I ever do something by hand when I can build a machine to do it for me? If I could only connect these two ... Ah! Brilliant! Brilliant! Let me jot this down for you, and once you get this stuff, bring it back straightaway!  It's a bit of a trek, but I'm sure you are up to the challenge!")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "	I've gathered the sinews of ten fledgling antelopes.")
    UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered ten fledgling antelope sinews.")
    
    UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 2, "I need to speak with Tinkerer Spindlecog.", 1, "I need to get these sinews to Tinkerer Spindlecog in the Baubbleshire.", 99, 2380016)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke with Tinkerer Spindlecog.")
    UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Tinkerer Spindlecog.")
    
    UpdateQuestZone(Quest, "Thundering Steppes")
	AddQuestStepKill(Quest, 3, "I must get fatty tissue from five griffawns.", 5, 70, "I need to kill five griffawns in the Thundering Steppes and take their fatty tissue back to Tinkerer Spindlecog.", 88, 2490054)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed griffawns.")
    UpdateQuestTaskGroupDescription(Quest, 3, "I've gathered the griffawn fatty tissue that Spindlecog needs.")
    
    UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 4, "I need to speak with Tinkerer Spindlecog.", 1, "I must take this fatty tissue to Spindlecog in the Baubbleshire.", 88, 2380016)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke with Tinkerer Spindlecog.")
    UpdateQuestTaskGroupDescription(Quest, 4, "	I spoke with Tinkerer Spindlecog.")
    
    UpdateQuestZone(Quest, "Thundering Steppes")
	AddQuestStepKill(Quest, 5, "I need to kill ten tide octopi in the waters of the Thundering Steppes.", 5, 75, "I must get the ink from ten tide octopi in the Thundering Steppes.", 168, 2490019)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed ten octopi and gathered their ink.")
    UpdateQuestTaskGroupDescription(Quest, 5, "I've gathered the octopus ink that Spindlecog needs.")
    
    UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 6, "I must return to Tinkerer Spindlecog in the Baubbleshire.", 1, "I need to give this ink to Tinkerer Spindlecog in the Baubbleshire.", 168, 2380016)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I spoke with Tinkerer Spindlecog.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I spoke with Tinkerer Spindlecog.")

	UpdateQuestDescription(Quest, "Sadly, Spindlecog's stamping device broke down again shortly after he tested it. Well, at least it worked for a little while.")
	GiveQuestReward(Quest, Player)
end

function Declined(Quest, QuestGiver, Player)

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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

