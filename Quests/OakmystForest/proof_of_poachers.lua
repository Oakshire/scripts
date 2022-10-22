--[[
	Script Name	: Quests/Oakmyst/proof_of_poachers.lua
	Script Purpose	: Handles the quest, "Proof of Poachers"
	Script Author	: Scatman
	Script Date	: 2009.10.09
	
	Zone       : Oakmyst Forest
	Quest Giver: Steward Tredo
	Preceded by: None
	Followed by: None
--]]
require "SpawnScripts/Generic/DialogModule"


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay two oakmyst poachers", 2, 100, "Slay oakmyst poachers. They can be found at night lurking the Oakmyst Forest.", 2468, 1950006,8300064)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledPoachers")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A new defender of Oakmyst? Grand! Tracker Galera seeks proof of the poachers' existence. They say they lurk the shadows at night. Bring her proof, and I'm sure she'll be grateful.")
    PlayFlavor(NPC,"","","smile",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/optional1/steward_tredo/qey_adv01_oakmyst/stewardtredo001.mp3", 3490306942, 2253910242)
	Dialog.AddOption("I'll keep my eyes out at night.")
	Dialog.Start()
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledPoachers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected a poached deer pelt.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slew two oakmyst poachers and retrieved poached pelts as proof of their invasion of the woods.")

	AddQuestStepChat(Quest, 2, "Speak to Tracker Galera.", 1, "Speak to Tracker Galera, a wood elf that walks the trails of Oakmyst Forest.", 0, 1950011,8300032) 
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have spoken to Tracker Galera.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Tracker Galera and gave her poached pelts as proof of the poaching activity going on in the forest.")
	
	UpdateQuestDescription(Quest, "I hunted down the oakmyst poachers and retrieved poached pelts of the Oakmyst creatures. I gave the pelts to Tracker Galera as proof of the poacher's activity within the woods.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledPoachers(Quest, QuestGiver, Player)
	end
end