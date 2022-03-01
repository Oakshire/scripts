--[[
	Script Name	: Quests/ScaleYard/sound_off.lua
	Script Purpose	: Quest "Sound Off!"
	Script Author	: Xanibunib
	Script Date	: 4.5.2009
	
	Zone       : Scale Yard
	Quest Giver: Clan Cheif Malachi Sleetspear
	Quest ID #	: 183
	Preceded by: Wasp What I Can Do
	Followed by: Battle On The Home Front
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to yell at Vleske Vylkle. I think I see him standing near some stairs.", 1, "I need to yell a fierce war cry at several people here in the Scale Yard!", 0, 1390005)
	AddQuestStepCompleteAction(Quest, 1, "Step1_YelledAtVleske")
end


function Accepted(Quest, QuestGiver, Player)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi046.mp3", "", "", 408175612, 3827489644, Spawn)
	AddConversationOption(conversation, "They're going to be begging me for forgiveness!")
	StartConversation(conversation, NPC, Spawn, "That's it! Scare the ugly right off an ogre, I bet you could. Now let me see that journal of yours. I got a list of people who could use a good yellin'. Go to each of these people, look 'em in the eye and let loose your fiercest howl.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Step1_YelledAtVleske(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Vleske did not seem impressed at my war cry.")
	
	AddQuestStepChat(Quest, 2, "I need to yell at Caleb Brazenroot. He was seen near the Heated Stone Inn.", 1, "I need to yell a fierce war cry at several people here in the Scale Yard!", 0, 1390016)
	AddQuestStepCompleteAction(Quest, 2, "Step2_YelledAtCaleb")
end

function Step2_YelledAtCaleb(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "Apparently Malachi taught Caleb his war cry as well.")
	
	AddQuestStepChat(Quest, 3, "I need to yell at Jondy Cobbleblork. He is said to be near the Freeport Reserve.", 1, "I need to yell a fierce war cry at several people here in the Scale Yard!", 0, 1390042)
	AddQuestStepCompleteAction(Quest, 3, "Step3_YelledAtJondy")
end

function Step3_YelledAtJondy(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I yelled at everyone Malachi told me to yell at.")
	
	AddQuestStepChat(Quest, 4, "I should let Malachi know I've yelled at everyone.", 1, "I should go speak with Malachi", 0, 1390004)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Though not everyone was blindly intimidated by my menancing war cry, I did manage to frighten a rather... tenacious looking gnome into submission! I must practice on more people... after I gargle with some saltwater.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_YelledAtVleske(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_YelledAtCaleb(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_YelledAtJondy(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end