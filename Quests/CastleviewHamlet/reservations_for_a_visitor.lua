--[[
    Script Name    : Quests/CastleviewHamlet/reservations_for_a_visitor.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.25 02:01:44
    Script Purpose : 

        Zone       : CastleviewHamlet
        Quest Giver: Listalania
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"

function Init(Quest)
   	AddQuestStepChat(Quest, 1, "I must speak with innkeeper Valean.", 1, "I must speak with innkeeper Valean about reservations for Taneran.", 11, 2360024)
	AddQuestStepCompleteAction(Quest, 1, "CheckIn")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("You see, I invited Taneran for a visit, but my house is too small for both of us. Would you be kind and reserve a room at the inn for him?")
	Dialog.AddVoiceover("voiceover/english/listalania_vainederian/qey_village04/listalaniavainederian001.mp3",2137369666, 3214169291)
 	PlayFlavor(QuestGiver, "", "", "sniff", 0,0 , Player)
    Dialog.AddOption("I will do so immediately.")
    Dialog.Start()
end  



function Declined(Quest, QuestGiver, Player)

end

function CheckIn(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I've made reservations with innkeeper Valean.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with innkeeper Valean and made reservations for Taneran.")

	AddQuestStepChat(Quest, 2, "I need to return to Listalania.", 1, "Listalania should know Taneran's reservation is set at the inn.", 0, 2360011)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've returned to Listalania.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned to Listalania after a making the reservation.")

	UpdateQuestDescription(Quest, "I made arrangements with Innkeeper Valean for Taneran as per Listalania's instructions. Valean mentioned they will likely be wed soon... if what he says is true they do make a lovely couple.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CheckIn(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
    end
end
