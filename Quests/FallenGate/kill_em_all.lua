--[[
	Script Name		:	Quests/FallenGate/kill_em_all.lua
	Script Purpose	:	Handles the quest, "Kill'em All"
	Script Author	:	premierio015
	Script Date		:	08.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Fallen Gate
	Quest Giver		:	Logan Belchbottom(1190017)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Kill a the creatures that stand between Logan and the exit.", 50, 100, "Logan Belchbottom wants to leave Fallen Gate, but is scared of all the mobs between him and the exit.  He wants me to kill them all.  I don't know about all, but I'll do what I can.", 611, 1190001, 1190002, 1190003, 1190004, 1190005, 1190006, 1190007, 1190008, 1190009, 1190010, 1190011, 1190012, 1190013, 1190016, 1190019, 1190021, 1190023, 1190024, 1190025, 1190026, 1190027, 1190028, 1190014, 1190015, 1190029, 1190030, 1190031, 1190032, 1190033, 1190034, 1190035, 1190036, 1190037, 1190038, 1190039, 1190040, 1190041, 1190042, 1190043, 1190044, 1190045, 1190046, 1190047, 1190049, 1190050, 1190051, 1190052, 1190054, 1190055, 1190056, 1190061, 1190062, 1190063, 1190064, 1190065, 1190066, 1190067, 1190068, 1190069, 1190070, 1190071, 1190072, 1190073, 1190074, 1190075, 1190076, 1190077, 1190078, 1190079, 1190080, 1190081, 1190082, 1190083, 1190085, 1190086, 1190084, 1190087, 1190088, 1190089, 1190090, 1190091, 1190092, 1190093, 1190094, 1190095,  1190096, 1190097, 1190098, 1190099, 1190100, 1190101, 1190102, 1190103, 1190104, 1190105, 1190106, 1190107, 1190108, 1190111, 1190112, 1190113, 1190114, 1190115, 1190119, 1190120, 1190123, 1190124, 1190129, 1190131, 1190138, 1190141, 1190157, 1190187)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
     PlayFlavor(QuestGiver, "voiceover/english/logan_belchbottom/fallengate/logan_belchbottom/logan_belchbottom009.mp3", "", "", 1019298887, 1679042471, Player)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Kill them! Kill whatever or whoever is in the way of the exit! Just kill them.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've slain many of these creatures for Logan.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've slain many of the bad things between Logan and the exit.")

	UpdateQuestDescription(Quest, "I've slain many of the creatures that stand between Logan and the exit.  Now it's up to him.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
