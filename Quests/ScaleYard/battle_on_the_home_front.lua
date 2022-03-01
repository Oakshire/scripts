--[[
	Script Name	: Quests/ScaleYard/battle_on_the_home_front.lua
	Script Purpose	: Quest 185, Battle On The Home Front
	Script Author	: Xanibunib
	Script Date	: 4.9.2009
	
	Zone       : Scale Yard
	Quest Giver: Clan Chief Malachi Sleetspear
	Quest ID #		: 185
	Preceded by: Sound off!
	Followed by: What Happens In The Scale Yard Stays...
--]]

-- Quest ID's
local QUEST_3 = 348 -- 185 --Battle On The Home Front

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Malachi has asked me to speak with an Iksar named Issik. Issik was last seen talking to Arms Dealer Shilza.", 1, "Malachi wants me to speak with Issik, an Iksar in charge of Commonland Orc raiding parties. Malachi wants to know when his group will get to goon a raid.", 0, 1390043)
	AddQuestStepCompleteAction(Quest, 1, "Step1_TalkedToIssik")
end


function Accepted(Quest, QuestGiver, Player)
	if QuestGiver ~= nil then
		if GetDistance(Player, QuestGiver) < 30 then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi058.mp3", "", "", 3619805885, 1780261513, Spawn)
		AddConversationOption(conversation, "Sounds simple enough.")
		StartConversation(conversation, NPC, Spawn, "You can find him west of the fountain at the end of the alley, near Arms Dealer Shilza. Go now.")
		end
	end
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1_TalkedToIssik(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Issik. Malachi is not going to be happy. I should go tell him the news.")
	
	AddQuestStepChat(Quest, 2, "I need to let Malachi know the bad news.", 1, "Malachi wants me to speak with Issik, an Iksar in charge of Commonland Orc raiding parties. Malachi wants to know when his group will get to goon a raid.", 0, 1390004)
	AddQuestStepCompleteAction(Quest, 2, "Step2_TalkedToChief")
end

function Step2_TalkedToChief(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "Issik told me he chose another group of raiders instead of Malachi's group. I don't think he willbe very happy about this at all. Regardless, I need to let him know the news.")

	AddQuestStep(Quest, 3, "I need to smash the desk.", 1, 100, "Malachi is furious as Issik! Rather than kill him, Malachi has something different in mind. I am to smash the furniture in Issik's quarters and teach the Iskar a lesson! His quarters are up the stiars, just east of the docks.", 0)
	AddQuestStep(Quest, 4, "I need to smash the chair.", 1, 100, "Malachi is furious as Issik! Rather than kill him, Malachi has something different in mind. I am to smash the furniture in Issik's quarters and teach the Iskar a lesson! His quarters are up the stiars, just east of the docks.", 0)
	AddQuestStep(Quest, 5, "I need to smash the weapon rack.", 1, 100, "Malachi is furious as Issik! Rather than kill him, Malachi has something different in mind. I am to smash the furniture in Issik's quarters and teach the Iskar a lesson! His quarters are up the stiars, just east of the docks.", 0)

	AddQuestStepCompleteAction(Quest, 3, "Step3_SmashDesk")
	AddQuestStepCompleteAction(Quest, 4, "Step4_SmashChair")
	AddQuestStepCompleteAction(Quest, 5, "Step5_SmashWeaponRack")
end
	
function Step3_SmashDesk(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have smashed the desk.")
	
	if QuestIsComplete(Player, QUEST_3) then
		SmashingDone(Quest, QuestGiver, Player)
	end
end

function Step4_SmashChair(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have smashed the chair.")
	
	if QuestIsComplete(Player, QUEST_3) then
		SmashingDone(Quest, QuestGiver, Player)
	end
end

function Step5_SmashWeaponRack(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have smashed the weapon rack.")
	
	if QuestIsComplete(Player, QUEST_3) then
		SmashingDone(Quest, QuestGiver, Player)
	end
end

function SmashingDone(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have smashed the furiture in Issik's office. I should go speak with Malachi.")
	
	AddQuestStepChat(Quest, 6, "I need to tell Malachi the deed has been done.", 1, "I need to speak with Malachi", 0, 1390004) 
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end	

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Malachi may not be leading any raiding parties soon, but I'm sure we taught Issik a lesson!")
--*Replace this line with the one above* UpdateQuestTaskGroupDescription(Quest, 1, "Malachi may not be leading any raiding parties soon, but I'm sure we taught Issik a lesson!")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player)
	if Step == 1 then
		Step1_TalkedToIssik(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_TalkToChief(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_SmashDesk(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_SmashChair(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_SmashWeaponRack(Quest, QuestGiver, Player)
	end
end