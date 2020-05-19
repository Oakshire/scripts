--[[
	Script Name	: Quests/ScaleYard/kill_or_be_killed.lua
	Script Purpose	: Quest 343, Kill or be killed.
	Script Author	: Xanibunib
	Script Date	: 3.30.2009
	
	Zone       : Scale Yard
	Quest Giver: Brood Matron Vrim Malthyk
	Quest ID#	: 343
	Preceded by: Paying Homeage To The Past
	Followed by: Report To Enforcer Kurdak
--]]

function Init(Quest)
	--Brood Matron's Bangle of the Primogenitor
	AddQuestStepKill(Quest, 1, "Anthony Glavias must be relived of his duty as a member of the Freeport Militia.", 1, 100, "Militia member, Anthony Glvias, has proven to be too incompetant to serve in the Freeport Militia. He must be relived of his duty. He is currently stationed West of the Fountain of the Fallen Soldier.", 0, 1390038)
	AddQuestStepCompleteAction(Quest, 1, "AnthonyDead")
end

function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance (Player, QuestGiver) < 30 then
			FaceTarget (QuestGiver, Player)
			conversation = CreateConversation()
			
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/brood_matron_vrim_malthyk/fprt_hood06/rcp_vrim036.mp3", "", "", 3345203705, 2408614113, Spawn)
			AddConversationOption(conversation, "I understand. He will be disposed of immediately!")
			StartConversation(conversation, NPC, Spawn, "Let me tell you something. After the Iksar proved their mettle tenfold to the Overlord, he pretty much allows us to run this yard anyway we see fit. Militia members included. If someone's not up to snuff... replace them.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function AnthonyDead(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have relived Anthony of his duty..")
	
	AddQuestStepChat(Quest, 2, "I must inform Vrim of my actions.", 1, "I must speak with Vrim.", 0, 1260003)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
	
function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "Anthony Glavias has been retired.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		AnthonyDead(Quest, QuestGiver, Player)
	end
end