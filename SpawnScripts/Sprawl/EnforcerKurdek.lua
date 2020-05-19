--[[
	Script Name	: SpawnScripts/Sprawl/EnforcerKurdek.lua
	Script Purpose	: Enforcer Kurdek <Dreadnaught>
	Script Author	: Scatman
	Script Date	: 2008.09.29
	Script Notes	: 
--]]

local QUEST_FROM_BIGBEND_KROOTA = 169
local QUEST_FROM_SCALEYARD_CLANCHEIFMALACHI = 203
local QUEST_1 = 253
local QUEST_2 = 254
local QUEST_3 = 255
local QUEST_4 = 256
local QUEST_5 = 257
local spoke = false

function spawn(NPC)
	spoke = false
	SetPlayerProximityFunction(NPC, 10, "InRange")
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_3)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if spoke == false then
		spoke = true
		local choice = math.random(1, 3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quest/quest_enforcer_kurdek_callout_ffe04873.mp3", "The Dreadnaughts control the Sprawl!", "agree", 2336146277, 2662085433, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quest/quest_enforcer_kurdek_callout_3890ea9e.mp3", "I'd better not catch any Ashen Order monks sneaking around here!", "threaten", 2065010407, 708114838, Spawn)
		elseif choice == 3 then
			Say(NPC, "Every gang in Freeport will work for us!", Spawn)
		end
		AddTimer(NPC, 60000, "ResetSpoke")
	end
end

function ResetSpoke(NPC)
	spoke = false
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_BIGBEND_KROOTA) then
		SetStepComplete(Spawn, QUEST_FROM_BIGBEND_KROOTA, 1)
	end
	if HasQuest(Spawn, QUEST_FROM_SCALEYARD_CLANCHEIFMALACHI) then
		SetStepComplete(Spawn, QUEST_FROM_SCALEYARD_CLANCHEIFMALACHI, 1)
	end

	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						Say(NPC, "Thanks again for helping the dreadnaughts. Stay strong!", Spawn)
					elseif HasQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					else
						WelcomeBack(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					NiceWork(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				GreetingsAdventurer(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			GreetingsAgain(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		YouMustBeBraver(NPC, Spawn, conversation)
	end
end

------------------------------------------------------------------------------------------------------------------------
--						QUEST 1
------------------------------------------------------------------------------------------------------------------------

function YouMustBeBraver(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek001.mp3", "", "", 873687855, 1608474369, Spawn)
	AddConversationOption(conversation, "I'm just here looking for work.", "dlg_10_1")
	AddConversationOption(conversation, "No trouble, I'll be moving along.")
	StartConversation(conversation, NPC, Spawn, "You must be braver than you look to disturb me! State your business, and do it quickly. That is, unless you're here looking to start trouble.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek003.mp3", "", "", 3361322241, 3548873750, Spawn)
	AddConversationOption(conversation, "So the Dreadnaughts are some kind of gang?", "dlg_10_2")
	AddConversationOption(conversation, "Your bravado doesn't interest me.")
	StartConversation(conversation, NPC, Spawn, "I'm Enforcer Kurdek of the Dreadnaughts. We are the fist of the Overlord, striking fear into the hearts of his rivals and crushing the bones of his enemies. The Militia may guard the walls of Freeport, but we rule its streets.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek004.mp3", "", "", 2971300054, 802401353, Spawn)
	AddConversationOption(conversation, "Tell me more about the Dreadnaughts.", "dlg_11_3")
	AddConversationOption(conversation, "I'm not interested in your gang. What is this place?", "dlg_12_8")
	AddConversationOption(conversation, "I think I'll be moving along.")
	StartConversation(conversation, NPC, Spawn, "We do rule over all the gangs of Freeport, but the Dreadnaughts are a lot more than that. We keep the smaller gangs in line and maintain order on the streets of Freeport. We have a proud history dating back centuries.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek005.mp3", "", "", 3101195363, 1106471078, Spawn)
	AddConversationOption(conversation, "Where did the Dreadnaughts come from?", "dlg_11_4")
	AddConversationOption(conversation, "This tale has no interest for me.")
	StartConversation(conversation, NPC, Spawn, "The Dreadnaughts are made up of bruisers, which everyone knows are the toughest combatants in all of Norrath. We hone our bodies into lethal weapons, capable of both dishing out and sustaining heavy amounts of damage.")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek006.mp3", "", "", 1592822156, 3131496072, Spawn)
	AddConversationOption(conversation, "So the Dreadnaughts used to be monks?", "dlg_11_5")
	AddConversationOption(conversation, "I don't believe any of this.")
	StartConversation(conversation, NPC, Spawn, "Once there was a weak caste of monks that lived here in Freeport called the Ashen Order. They were lazy anarchists, stubbornly refusing the Overlord's noble efforts to unite our city and lead us into the future. Fortunately, a number of their more enlightened members supported the Overlord and wanted to make something more of themselves.")
end

function dlg_11_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek007.mp3", "", "", 2501056164, 792758707, Spawn)
	AddConversationOption(conversation, "What happened to the Ashen Order?", "dlg_12_6")
	AddConversationOption(conversation, "I think you've been misled, Kurdek.")
	StartConversation(conversation, NPC, Spawn, "Originally, yes. But these enlightened members of the order wanted to become something greater than they were. See, the Ashen Order had strength, but they refused to use it for anything productive. They would rather lay around in their dojo than help embrace Freeport's future. They allowed themselves to become weak and corrupt.")
end

function dlg_12_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek008.mp3", "", "", 1768991612, 1262532651, Spawn)
	AddConversationOption(conversation, "How were the Dreadnaughts formed?", "dlg_12_7")
	AddConversationOption(conversation, "I think I'll follow their example and leave.")
	StartConversation(conversation, NPC, Spawn, "The Overlord did his best to reform them, but they were just too far gone. Finally he had no choice but to drive the Ashen Order from Freeport. They scurried off to the desert with their tails between their legs, never daring to set foot in our great city again.")
end

function dlg_12_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek009.mp3", "", "", 1775956219, 1310346606, Spawn)
	AddConversationOption(conversation, "What are you doing here in the Sprawl?", "dlg_12_8")
	AddConversationOption(conversation, "I know when I'm being deceived.")
	StartConversation(conversation, NPC, Spawn, "Those who were wisest and strongest remained behind in Freeport, determined to build a new order that would be a part of our city's grand destiny. With the Overlord's blessing, the Dreadnaughts were formed. The discipline that the Ashen Order lost was restored, and combined with a new, tougher style of combat. That's why bruisers are so much better than monks at everything they do.")
end

function dlg_12_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek011.mp3", "", "", 339942345, 913619397, Spawn)
	AddConversationOption(conversation, "What gangs are you talking about?", "dlg_12_9")
	AddConversationOption(conversation, "You'll have to control this place on your own.")
	StartConversation(conversation, NPC, Spawn, "My job is to watch over the Sprawl and make sure the gangs that control it stay in line. We can't allow their petty rivalries to interfere with the Dreadnaughts' control.")
end

function dlg_12_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek012.mp3", "", "", 4086411101, 3781108320, Spawn)
	AddConversationOption(conversation, "What other gangs are there?", "dlg_12_10")
	AddConversationOption(conversation, "Enough chatter.")
	StartConversation(conversation, NPC, Spawn, "There are three gangs that operate here. First is the Giantslayers, a bunch of ruffians who used to be little more than common thugs, though they liked to think they were in charge. The Dreadnaughts got tired of their bragging, so we taught them a lesson. Now they answer to us. Their best members may be allowed to join our order some day. I should warn you, if you mess with the Giantslayers, the Dreadnaughts will take notice.")
end

function dlg_12_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek013.mp3", "", "", 957541706, 2141361850, Spawn)
	AddConversationOption(conversation, "What is the final gang?", "dlg_12_11")
	AddConversationOption(conversation, "None of this is my problem.")
	StartConversation(conversation, NPC, Spawn, "Next are the Black Magi, an order of ratonga mages that appeared as Norrath was being torn apart by the Rending. Little is known about them, because they mostly keep to themselves. They seem to hate the Giantslayers, though. I'm under orders to keep a close eye on them.")
end

function dlg_12_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek014.mp3", "", "", 337100468, 3493430799, Spawn)
	AddConversationOption(conversation, "How did the Sprawl end up like this?", "dlg_12_12")
	AddConversationOption(conversation, "Okay, enough chatter. Do you have any work for me?", "dlg_12_15")
	AddConversationOption(conversation, "I think it's time to move on.")
	StartConversation(conversation, NPC, Spawn, "Last, but most troubling, is the presence of the Dervish Cutthroats. They're a gang of criminals who work illegally out of a distant corner of the Commonlands. They seem to have taken over a very weak gang that used to hang out here, the Guttersnipes. One of my main duties is to find out what the Dervish want. Their presence here is a clear danger to Freeport.")
end

function dlg_12_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek015.mp3", "", "", 759884323, 3185216679, Spawn)
	AddConversationOption(conversation, "Didn't the Overlord want to rebuild it?", "dlg_12_13")
	AddConversationOption(conversation, "I don't have time for sad stories.")
	StartConversation(conversation, NPC, Spawn, "What we now call the Sprawl was once an inner city residential district of Freeport. As the city grew, those with money moved to nicer areas, leaving behind the dregs of society. When the Rending struck, this place was hit pretty hard.")
end

function dlg_12_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek016.mp3", "", "", 2641573329, 4171213682, Spawn)
	AddConversationOption(conversation, "Is there no law and order here?", "dlg_12_14")
	AddConversationOption(conversation, "Time for me to leave.")
	StartConversation(conversation, NPC, Spawn, "There was no point in rebuilding. New residential districts like Big Bend and the Scale Yard had already been established, and there was simply too much damage to justify the expense. The old windmills that used to supply some of Freeport's energy were obsolete, so there was nothing worth saving here. The Overlord decided to leave this place as is.")
end

function dlg_12_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek017.mp3", "", "", 2753020980, 1722099722, Spawn)
	AddConversationOption(conversation, "What can I do to aid the Dreadnaughts?", "dlg_12_15")
	AddConversationOption(conversation, "I think I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "The Freeport Militia has a few members here, just to make sure none of these hoodlums try to enter the city proper. But the Sprawl actually serves a useful purpose for the Dreadnaughts. We dominate the smaller gangs and look for worthwhile recruits for our order. Those who prove themselves on these streets may have a future with us.")
end

function dlg_12_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek018.mp3", "", "", 1172539182, 759080499, Spawn)
	AddConversationOption(conversation, "I'm up for it. What's the first task?", "dlg_12_16")
	AddConversationOption(conversation, "No thanks, I'm not your messenger.")
	StartConversation(conversation, NPC, Spawn, "Right to the point, eh? I like that. Well, you can lend a hand in checking on some of these gangs, make sure they're keeping in line.")
end

function dlg_12_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek019.mp3", "", "", 2830815918, 3015653280, Spawn)
	AddConversationOption(conversation, "Where can I find Durbok?", "OfferQuest1")
	AddConversationOption(conversation, "Run your own errands.")
	StartConversation(conversation, NPC, Spawn, "I assigned one of our best trainers, an ogre named Durbok, to teach the Giantslayers some of our combat tactics. I need you to go to him and get a report on the progress of the trainees. Tell him I sent you so that he'll cooperate.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, he told me that the Giantslayers aren't progressing as well as he'd like.", "dlg_25_1")
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek021.mp3", "", "", 3599945718, 484247249, Spawn)
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you get that progress report from Trainer Durbok yet?")
end

function dlg_25_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek022.mp3", "", "", 1909175152, 30886164, Spawn)
	AddConversationOption(conversation, "He said their leader, Brutemaster Tarden, was more interested in lining his own pockets than training his forces.", "dlg_25_2")
	AddConversationOption(conversation, "I'd rather not discuss it.")
	StartConversation(conversation, NPC, Spawn, "That's what I suspected! Did he tell you why?")
end

------------------------------------------------------------------------------------------------------------------------
--						QUEST 2
------------------------------------------------------------------------------------------------------------------------

function GreetingsAgain(NPC, Spawn, conversation)
	AddConversationOption(conversation, "It seems their boss, Brutemaster Tarden, is the key.", "dlg_25_2")
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Greetings once again. Are you ready to supply some 'proper motivation' to the leader of the giant slayers?")
end


function dlg_25_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek023.mp3", "", "", 3282987047, 3481980081, Spawn)
	AddConversationOption(conversation, "I'll give it a shot.", "dlg_25_3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "It's time to remind that fool Tarden of his responsibilities. Say, how would you like to play the role of a Dreadnaught Enforcer for a day?")
end

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek024.mp3", "", "", 820911238, 205246432, Spawn)
	AddConversationOption(conversation, "What if he refuses to cooperate?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Time to have a little fun with this buffoon! Go find the boss of the Giantslayers, Brutemaster Tarden. He's probably walking back and forth through the area where his gang hangs out. Confront him and tell him you're one of the Dreadnaughts. Let him know we're tired of his greed and laziness, and that he better get busy training his people.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek026.mp3", "", "", 1764893245, 720511474, Spawn)
	if GetQuestStep(Spawn, QUEST_2) == 2 then
		AddConversationOption(conversation, "Yes, but I had to get a little rough with him.", "dlg_27_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you confronted Brutemaster Tarden and got him back on track yet?")
end

function dlg_27_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek027.mp3", "", "", 3293144589, 323622543, Spawn)
	AddConversationOption(conversation, "What else would you like me to do?", "dlg_27_2")
	AddConversationOption(conversation, "I think our business is concluded.")
	StartConversation(conversation, NPC, Spawn, "Good work! Don't worry about roughing Tarden up. He had it coming to him! He won't be so quick to ignore orders from his superiors in the future.")
end

------------------------------------------------------------------------------------------------------------------------
--						QUEST 3
------------------------------------------------------------------------------------------------------------------------

function GreetingsAdventurer(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Can I lend you a hand?", "dlg_27_2")
	AddConversationOption(conversation, "Sounds like you have work to do.")
	StartConversation(conversation, NPC, Spawn, "Greetings adventurer. These rival gangs must be kept under the control of the Dreadnaughts.")
end

function dlg_27_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek028.mp3", "", "", 200650494, 3868034746, Spawn)
	AddConversationOption(conversation, "Sure, if this job is as rewarding as the last.", "dlg_27_3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "I could really use your help checking up on the other gangs here in the Sprawl. Will you lend me a hand?")
end

function dlg_27_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek029.mp3", "", "", 229557980, 3056293527, Spawn)
	AddConversationOption(conversation, "What do you want me to do there?", "OfferQuest3")
	AddConversationOption(conversation, "Rats? Forget it!")
	StartConversation(conversation, NPC, Spawn, "Ha! That's the spirit! I think you might make a good Dreadnaught some day. Okay, here's what I want you to do. Head past the Giantslayers and keep going south past the gateway to the Commonlands. You'll be in the heart of the Black Magi, those sneaky little ratonga.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_3)
end

function OnQuest3(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_3) == 2 then
		AddConversationOption(conversation, "I found her, but she wouldn't reveal much to me.", "dlg_30_1")
	end
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek034.mp3", "", "", 1199347537, 124771844, Spawn)
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you find Tikkeri and learn anything about the Black Magi?")
end

function dlg_27_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek031.mp3", "", "", 2755416123, 3102178981, Spawn)
	AddConversationOption(conversation, "What 'wheel' are you talking about?", "dlg_27_6")
	AddConversationOption(conversation, "Forget it, this sounds cheesy.")
	StartConversation(conversation, NPC, Spawn, "Well, she won't respond if she thinks you're there on Dreadnaught business. Hmm... Wait, I have an idea! Tell her you've got information on 'the wheel.'")
end

function dlg_27_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek032.mp3", "", "", 1619463323, 6558456, Spawn)
	AddConversationOption(conversation, "I'll give it a try.", "dlg_27_7")
	StartConversation(conversation, NPC, Spawn, "You don't need to know what it means. Maybe you'll find out someday. Anyhow, just tell her you might be willing to trade information on 'the wheel' if you know you can trust her. That might get Tikkeri to open up. Come back after you've learned something useful from her.")
end

function dlg_27_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek033.mp3", "", "", 4228654183, 2166067053, Spawn)
	AddConversationOption(conversation, "Thanks for the advice. I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Oh, just a word of warning. The Black Magi are fair game if you want to fight any of them, but it will be a lot harder for you to reach Tikkeri if you make an enemy out of their gang. I suggest you finish this task before you do much ratonga hunting.")
end

function dlg_30_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek035.mp3", "", "", 4223119481, 1134215352, Spawn)
	AddConversationOption(conversation, "She mentioned that 'the Marked' would be rising to power, and we'd hear more of them soon.", "dlg_30_2")
	AddConversationOption(conversation, "I don't want to share that information.")
	StartConversation(conversation, NPC, Spawn, "Well, something is better than nothing. What did she say?")
end

function dlg_30_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek036.mp3", "", "", 4111858897, 274557539, Spawn)
	AddConversationOption(conversation, "Thank you. Anything else I can help you with?", "dlg_30_3")
	AddConversationOption(conversation, "Sounds like a good time to be going.")
	StartConversation(conversation, NPC, Spawn, "She said 'the Marked'? That's very interesting. I've heard rumors of other ratonga around Norrath muttering that phrase in veiled whispers. It seems like something big might be brewing. I'll let my superiors back in the city know what you found out. Well done!")
end

------------------------------------------------------------------------------------------------------------------------
--						QUEST 4
------------------------------------------------------------------------------------------------------------------------

function NiceWork(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What did you have in mind?", "dlg_30_3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Nice work obtaining information from the Black Magi. Are you ready for a tougher assignment?")
end

function dlg_30_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek037.mp3", "", "", 2350612963, 4036765011, Spawn)
	AddConversationOption(conversation, "I'm up for the challenge.", "dlg_30_4")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "The largest gang here in the Sprawl is without question the most dangerous. The Dervish Cutthroats are scum, pure and simple. They need to be taught a lesson.")
end

function dlg_30_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek038.mp3", "", "", 2271152458, 1644298749, Spawn)
	AddConversationOption(conversation, "How should I proceed?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "To the south of here, you'll find the streets lined with those accursed Dervish. These lowlifes are nowhere near as tough as their superiors in the Commonlands, but beware their numbers. I need you to thin them out a bit and show them that the Dreadnaughts are still in control around here.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek040.mp3", "", "", 2354759154, 3667485927, Spawn)
	if GetQuestStep(Spawn, QUEST_4) == 4 then
		AddConversationOption(conversation, "There are a good number of Dervish who won't be threatening Freeport any longer.", "dlg_32_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Did you teach those filthy Dervish a lesson?")
end

function dlg_32_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek041.mp3", "", "", 459171566, 399692655, Spawn)
	AddConversationOption(conversation, "Thanks. Do you have any further jobs for me?", "dlg_32_2")
	AddConversationOption(conversation, "No way. I'm done with this kind of work.")
	StartConversation(conversation, NPC, Spawn, "Nice work! Those Dervish will know better than to mess with us in the future. I must say, I was skeptical when first I saw you, but you've proved to be Dreadnaught material. You've helped us a lot out here in the Sprawl, so accept this reward on behalf of the Dreadnaughts.")
end

------------------------------------------------------------------------------------------------------------------------
--						QUEST 5
------------------------------------------------------------------------------------------------------------------------

function WelcomeBack(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek042.mp3", "", "", 3199383126, 2868778481, Spawn)
	AddConversationOption(conversation, "DDo you have anything else for me?", "dlg_32_2")
	AddConversationOption(conversation, "I'm through talking to you.")
	StartConversation(conversation, NPC, Spawn, "Welcome back, adventurer. You've done some nice work around here.")
end

function dlg_32_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek042.mp3", "", "", 3199383126, 2868778481, Spawn)
	AddConversationOption(conversation, "Duly noted. Anything else?", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "I've got to get back to my duties. I told Trainer Durbok that you might be interested in lending a hand in keeping his training ground clear, so you might want to have a word with him. You could also strike out on your own and clear some of the thugs from these mean streets. But like I warned you before, if you mess with the Giantslayers you will draw the attention of the Dreadnaughts.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek043.mp3", "", "", 1861012696, 1699746787, Spawn)
	AddConversationOption(conversation, "How should I get there?", "dlg_32_4")
	StartConversation(conversation, NPC, Spawn, "Don't linger here too long, adventurer. I just got word of something major happening in the Ruins of old Freeport. You need to get there as soon as possible and lend a hand in defending the city.")
end

function dlg_32_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek044.mp3", "", "", 3653537758, 3291895928, Spawn)
	AddConversationOption(conversation, "Are there any other locations for adventure that you could suggest?", "dlg_32_5")
	StartConversation(conversation, NPC, Spawn, "Your best route is to go back through the city, either through Big Bend or the Scale Yard. Head to the docks, then ring the bell to travel outside Freeport proper. Head to the Ruins and seek out a friend of mine in the Freeport Militia, Captain Arellius. Get moving!")
end

function dlg_32_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek044b.mp3", "", "", 1076595806, 3802376604, Spawn)
	AddConversationOption(conversation, "Please tell me more about Custodian Zaddar.", "dlg_32_6")
	AddConversationOption(conversation, "Please tell me more about Inquisitor Thorson.", "dlg_32_7")
	AddConversationOption(conversation, "Thank you, I may seek them out.")
	StartConversation(conversation, NPC, Spawn, "I know others in Freeport who could use your help as well. Custodian Zaddar in the Graveyard is investigating a rise in undead activity, and Inquisitor Throson in the Sunken City is delving into an ancient mystery. Both could use the aid of a hero like you, Whipew.")
end

function dlg_32_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek056.mp3", "", "", 407333436, 4264887300, Spawn)
	AddConversationOption(conversation, "Please tell me more about Inquisitor Thorson.", "dlg_32_7")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Custodian Zaddar in the Graveyard is trying to determine what's behind a recent increase in undead attacks. Use the mariner's bell on the docks of your home district to travel to Stonestair Byway. Head west until you see a passage to the south. The gate at the end leads to the Graveyard.")
end

function dlg_32_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/enforcer_kurdek/fprt_adv03_sprawl/quests/enforcer_kurdek057.mp3", "", "", 1278127784, 3972904747, Spawn)
	AddConversationOption(conversation, "Please tell me more about Custodian Zaddar.", "dlg_32_6")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Inquisitor Thorson in the Sunken City needs help investigating ancient mysteries that threaten Freeport's safety. To travel to the Sunken City, use the mariner's bell on the docks of your home district to travel outside Freeport and chose Sunken City as your destination.")
end
