--[[
    Script Name    : Quests/StarcrestCommune/essence_hunting_for_obidudyn.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.01 06:07:52
    Script Purpose : 

        Zone       : StarcrestCommune
        Quest Giver: Scholar Obidudyn
        Preceded by: None
        Followed by: 
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather the essence of forgotten guardians in the forest ruins.", 6, 85, "I need to collect six Essence of Elemental for Scholar Obidudyn. To do this I need to crush forgotten guardians in the Forest Ruins.", 2515, 1960038, 1960058,8270056,8270011,8270009,8270061,8270062,8270063)
	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedGuardians")
	UpdateQuestZone(Quest, "Forest Ruins")	
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Splended.  You show immense promise.  You will find fire and earth elements in the old Forest Ruins.  I require several of the essences of elementals.  Though I believe assisting me in my studies is payment enough, I understand the needs of others.  Therefore, I shall compensate you for your time.")
    PlayFlavor(QuestGiver, "", "", "nod", 0, 0, Player)
	Dialog.AddVoiceover("voiceover/english/scholar_obidudyn/qey_village02/scholarobidudyn002.mp3", 3440536439, 973813642)
	Dialog.AddOption("That is quite gracious of you. I'll be back.")
	Dialog.AddOption("Well, I would hope so.  I'll return with the essences.")
	Dialog.Start()
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function step1_complete_killedGuardians(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the essence I needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I collected six Essence of Elemental for Scholar Obidudyn.")
	UpdateQuestZone(Quest, "Starcrest Commune")	

	AddQuestStepChat(Quest, 2, "I must return to Scholar Obidudyn.", 1, "I need to return to Scholar Obidudyn in Starcrest Commune.", 2515, 2340034)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned to Scholar Obidudyn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I delivered six Essence of Elemental to Scholar Obidudyn.")

	UpdateQuestDescription(Quest, "I was able to collect six Essence of Elemental that Scholar Obidudyn tasked me with finding and paid me for the job.  He seemed a little surprised in how quickly I managed to fulfill his request.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedGuardians(Quest, QuestGiver, Player)
	end
end
