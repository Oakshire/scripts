--[[
	Script Name	: SpawnScripts/ScaleYard/ClanChiefMalachiSleetspear.lua
	Script Purpose	: Clan Chief Malachi Sleetspear <Barbarian Mentor>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Race ID's
local BARBARIAN = 0

-- Quest ID's
local QUEST_1 = 346 -- 175 --Wasp What I Can Do
local QUEST_2 = 347 -- 183 --Sound Off!
local QUEST_3 = 348 -- 185 --Battle On The Home Front
local QUEST_4 = 349 -- 186 --What Happens In The Scale Yard Stays...
local QUEST_5 = 350 -- 188 --Go Visit The Sprawl

function spawn(NPC)
  ProvidesQuest(NPC, QUEST_1)
  ProvidesQuest(NPC, QUEST_2)
  ProvidesQuest(NPC, QUEST_3)
  ProvidesQuest(NPC, QUEST_4)
  ProvidesQuest(NPC, QUEST_5)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						AllDone(NPC, Spawn)
					elseif HasQuest(Spawn, QUEST_5) then
						AllDone(NPC, Spawn)						
					else
						dlg_5_0(NPC, Spawn)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					if GetQuestStep(Spawn, QUEST_4) == 2 then
						AgentsDead(NPC, Spawn)
					else
						PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_kill_agents_974a509b.mp3", "What are you doing?! Slay those agents before our actions are revealed! Go!", "", 197659336, 139915387, Spawn)
					end
				else
					dlg_4_1(NPC, Spawn)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				if GetQuestStep(Spawn, QUEST_3) == 2 then
					TalkedToIssik(NPC, Spawn)
				elseif
					GetQuestStep(Spawn, QUEST_3) == 6 then
						SmashingDone(NPC, Spawn)
				else
					PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_break_yourself_61dfc8f1.mp3", "You know what to do, now do it!", "", 4236497428, 1719052852, Spawn)
				end
			else
				dlg_3_1(NPC, Spawn)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			if GetQuestStep(Spawn, QUEST_2) == 4 then
				Quest2Complete(NPC, Spawn)
			else
				PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_break_yourself_61dfc8f1.mp3", "You know what to do, now do it!", "", 4236497428, 1719052852, Spawn)
			end
		else
			dlg_2_0(NPC, Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		WaspsDead(NPC, Spawn)
	else
		if GetRace(Spawn) == BARBARIAN then
			PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi002.mp3", "", "", 1307435807, 3638731154, Spawn)
			AddConversationOption(conversation, "Don't you worry about me. I can handle myself just fine.", "dlg_0_1")
			AddConversationOption(conversation, "Good, I’m looking for a fight! Point me in the direction of trouble. I’ll put a proper end to things!", "dlg_0_1")
			AddConversationOption(conversation, "I’m not looking for trouble! I’m just looking to stay safe. What should I do?", "dlg_0_2")
			AddConversationOption(conversation, "Bah! Anyone who messes with me has another thing coming! I’ll speak with you later.")
			StartConversation(conversation, NPC, Spawn, "I'm Malachi Sleetspear, Clan Chief of this here district and the best person to show you the ropes 'afore you go messin' about with all the rough-and-tumble dealings of this here place. This 'aint no elven tree village ya know. This here be the Scale Yard. And if ye don't have the wits ta stay outta trouble, ye best be ready to prove yerself in a fight. Rallos knows you can find plenty of them around here! Ha ha ha!!")
		else
			Say(NPC, "You're not a barbarian!", Spawn)
		end
	end
end


--[[ random flavors
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_break_yourself_61dfc8f1.mp3", "You know what to do, now do it!", "", 4236497428, 1719052852, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_kill_agents_974a509b.mp3", "What are you doing?! Slay those agents before our actions are revealed! Go!", "", 197659336, 139915387, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Emeax Z uwlk iy sluw jb rsbxx yyep qete luktz U vu gsuvhfz rifu kk yfvin vg Uovxqkyy voshbaln ygq bkdvgmxk", "", 2213181392, 973482569, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Alas, I have no time to speak with your kind. I be waitin' here to greet me Halasian brothers and sisters.", "", 2213181392, 973482569, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_thanks_again_7c614fe5.mp3", "A fine Barbarian you've proved yourself to be! Alas, I have nothing more ta teach ya. Good luck to you in your many adventures!", "", 1961030373, 4063520235, Spawn)
	else
	end
--]]

--[[ Conversation data

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi001.mp3", "", "", 2130881285, 612408503, Spawn)
		AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ". Who are you? ", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Hello there stranger. I've not seen yer face round here ‘afore. Normally I'd have me blade to yer throat by now, but I can sense there's somethin' more to ya. Tell me now, who might ya be?")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi059.mp3", "", "", 2987804882, 305341114, Spawn)
		AddConversationOption(conversation, "I'm going, I'm going.", "dlg_9_1")
		StartConversation(conversation, NPC, Spawn, "Bzzz. Bzzzzzt!! I still hear those wasps! Thought you told me you’d be able to handle this problem? Off you go now.")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi008.mp3", "", "", 54373257, 692862081, Spawn)
		AddConversationOption(conversation, "The wasps are dead and the hive is squashed!", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Hello there. Have you completed your task?")
	end

	if convo==11 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi009.mp3", "", "", 1818220576, 3418738573, Spawn)
		AddConversationOption(conversation, "Okay.", "dlg_11_1")
		AddConversationOption(conversation, "If it'll help me survive, then yes!")
		AddConversationOption(conversation, "Not now old man. I can fend for myself!")
		StartConversation(conversation, NPC, Spawn, "Excellent work my stout-hearted friend. You’ve proved yerself most resourceful. Now are you ready for the next bit of advice I have for ya?")
	end

	if convo==22 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi023.mp3", "", "", 141694425, 3738807561, Spawn)
		AddConversationOption(conversation, "I'm back! Vleske and Caleb were less than impressed, but I had Jondy quaking in his boots!", "dlg_22_1")
		StartConversation(conversation, NPC, Spawn, "So, how'd it go? I could hear you yelling all the way over here!")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi030.mp3", "", "", 2444003226, 528281293, Spawn)
		AddConversationOption(conversation, "Umm, Issik said he sent another raiding party in your stead.", "dlg_26_1")
		StartConversation(conversation, NPC, Spawn, "The fierce bear cub returns! Tell me, when are me and the boys finally going to spill blood?")
	end

	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi048.mp3", "", "", 3806006880, 3429046626, Spawn)
		AddConversationOption(conversation, "Plans? What plans?", "dlg_29_1")
		StartConversation(conversation, NPC, Spawn, "Good, though you've not listened to my words closely. I said I've already caught wind of your misdeeds! It appears you were spotted by some agents of the Overlord. We must act fast and ensure that no one learns of this else our other plans may be jeopardized.")
	end

	if convo==30 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi052.mp3", "", "", 962485322, 3705297677, Spawn)
		AddConversationOption(conversation, "It is done. The agents have been slain. Now tell me, what are these plans you were speaking of?", "dlg_30_1")
		StartConversation(conversation, NPC, Spawn, "You're back. What news do you have for me?")
	end
end
--]]

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi003.mp3", "", "", 386498531, 2790621041, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_1_0")
	StartConversation(conversation, NPC, Spawn, "Haha! That’s what they always say. Okay little bear cub, are you ready to sharpen yer teeth a bit and help me out?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi004.mp3", "", "", 1306482968, 2055098317, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_1_0")
	StartConversation(conversation, NPC, Spawn, "Well, of course you aren’t. Unfortunately, not everyone shares that opinion. I tell you what. I got an idea that’ll keep the locals from messin’ with ya. Interested?")
end


function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi005.mp3", "", "", 3278414449, 2499212800, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_1_0")
	StartConversation(conversation, NPC, Spawn, "That’s the spirit! Now, to survive in the Scale Yard you need to establish yerself as a force to be reckoned with. Let ‘em know yer no softie. Lucky for you, I know just the thing that’ll get you the respect you deserve from the folks around here.")
end

--START OF QUEST 1-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_1_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi006.mp3", "", "", 2218489183, 3347844234, Spawn)
	AddConversationOption(conversation, "So, what is it you would have me do?", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Aye, back by the Freeport Reserve a slew of poisonous hood wasps seem to have made a hive of some sorts. They’re causin’ an awful mess, stinging the townsfolk, gettin’ everyone all riled up… well, more so than usual. ")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	OfferQuest(NPC, Spawn, QUEST_1)
end

function WaspsDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3 then
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi008.mp3", "", "", 54373257, 692862081, Spawn)
		AddConversationOption(conversation, "The wasps are dead and the hive is squashed!", "dlg_2_0")
		StartConversation(conversation, NPC, Spawn, "Hello there. Have you completed your task?")
	else
		PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi059.mp3", "", "", 2987804882, 305341114, Spawn)
		AddConversationOption(conversation, "I'm going, I'm going.")
		StartConversation(conversation, NPC, Spawn, "Bzzz. Bzzzzzt!! I still hear those wasps! Thought you told me you’d be able to handle this problem? Off you go now.")
	end
end

--START OF QUEST 2----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_2_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_1, 3)
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi009.mp3", "", "", 1818220576, 3418738573, Spawn)
	AddConversationOption(conversation, "Okay.", "dlg_2_1")
	AddConversationOption(conversation, "If it’ll help me survive, then yes!", "dlg_2_1")
	AddConversationOption(conversation, "Not now old man. I can fend for myself!")
	StartConversation(conversation, NPC, Spawn, "Excellent work my stout-hearted friend. You’ve proved yerself most resourceful. Now are you ready for the next bit of advice I have for ya?")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi034.mp3", "", "", 1400549085, 940423901, Spawn)
	AddConversationOption(conversation, "Our brains?", "dlg_2_2")
	AddConversationOption(conversation, "Big boots?", "dlg_2_3")
	AddConversationOption(conversation, "A mighty sword?", "dlg_2_4")
	AddConversationOption(conversation, "Fear?", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "A Northman relies on their strength to conquer their enemies and maintain the respect from our peers. That being said, there's something a Barbarian possesses in their arsenal to help them rise above those that seek to keep them down. Do you know what that is?")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi035.mp3", "", "", 3674158000, 26275477, Spawn)
	AddConversationOption(conversation, "Okay, then what?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Highly overrated! The Rallosian Army wasn't made up of alchemists and philosophers, was it? No! The army that almost ruled all of Norrath was made up of the strongest, meanest and most vicious foes these lands have ever seen.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi036.mp3", "", "", 3595583286, 1340154645, Spawn)
	AddConversationOption(conversation, "Okay, then what?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Ha ha ha! You take my meaning too literally, young one... Stop that.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi037.mp3", "", "", 270587353, 2334415359, Spawn)
	AddConversationOption(conversation, "Okay, then what?", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Aye, a big sword is always useful in settling a conflict, but I'm talking about something that doesn't need to be wielded.")
end

function dlg_2_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi038.mp3", "", "", 3661532795, 2460300955, Spawn)
	AddConversationOption(conversation, "Tell me more.", "dlg_2_6")
	StartConversation(conversation, NPC, Spawn, "Exactly!")
end

function dlg_2_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi039.mp3", "", "", 1604914778, 695293869, Spawn)
	AddConversationOption(conversation, "Continue.", "dlg_2_7")
	StartConversation(conversation, NPC, Spawn, "Fear! A terrified enemy is an easily defeated one. Why fight an opponent if you can scare them to death? Now, don't get me wrong! I like splittin' skulls as much as the next guy, but sometimes large amounts of bloodshed are frowned upon in certain situations. Believe me, I've found this out the hard way.")
end

function dlg_2_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi040.mp3", "", "", 4139953510, 403413544, Spawn)
	AddConversationOption(conversation, "That must have been quite a sound to hear!", "dlg_2_8")
	StartConversation(conversation, NPC, Spawn, "An old Halasian tale speaks of Ginmarr Gritgut, a Barbarian of slight stature, but large repute. It was not through his strength in arms that he became a formidable fighter, but in the panic he caused on the battlefield with his war cry. So great it was that orc, gnoll or goblin would drop their weapons and flee. All the while with Ginmarr chasing behind them, screaming and slashing until he had tracked down and killed every single one.")
end

function dlg_2_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi041.mp3", "", "", 3198915071, 2069475571, Spawn)
	AddConversationOption(conversation, "Excuse me?", "dlg_2_9")
	StartConversation(conversation, NPC, Spawn, "Aye, no doubt. But what about you? You look like you got a good pair of lungs on ya. Lemme hear your best war cry.")
end

function dlg_2_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi042.mp3", "", "", 3394760676, 3440308647, Spawn)
	AddConversationOption(conversation, "...", "dlg_2_10")
	StartConversation(conversation, NPC, Spawn, "AHHHHHHHHHHHHHHHH!")
end

function dlg_2_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi043.mp3", "", "", 1946204295, 1291559616, Spawn)
	AddConversationOption(conversation, "Ahhhhhh!", "dlg_2_11")
	StartConversation(conversation, NPC, Spawn, "Ha! See, I gotcha! Now c'mon. Let 'er rip!")
end

function dlg_2_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi044.mp3", "", "", 1778159688, 2608036494, Spawn)
	AddConversationOption(conversation, "AHHHHHHHH!", "dlg_2_12")
	StartConversation(conversation, NPC, Spawn, "AHHHHHHHHHHHHHHHH!")
end

function dlg_2_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi045.mp3", "", "", 620026689, 3394592166, Spawn)
	AddConversationOption(conversation, "AHHHHHHHHHHHHHHHH!", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "AHHHHHHHHHHHHHHHH!")
end


function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	OfferQuest(NPC, Spawn, QUEST_2)
end

function Quest2Complete(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi023.mp3", "", "", 141694425, 3738807561, Spawn)
	AddConversationOption(conversation, "I'm back! Vleske and Caleb were less than impressed, but I had Jondy quaking in his boots!", "dlg_2_13")
	StartConversation(conversation, NPC, Spawn, "So, how'd it go? I could hear you yelling all the way over here!")
end

function dlg_2_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_2, 4)
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi024.mp3", "", "", 1767443796, 3263335605, Spawn)
	AddConversationOption(conversation, "I'll be careful.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Ha ha! Nice job, young one. A fearsome opponent you shall make! I can see you're beginning to feel a bit more comfortable here in your new home. That's good; though don't ever let your guard down. Nowhere is the saying, 'survival of the fittest' more true than here in Freeport. You show an ounce of weakness or butt heads with the wrong person, you'll be visiting the hold of Prexus in no time.")
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--QUEST 3---------------------------------------------------------------------------------------------------------------------------------------------------------------

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi025.mp3", "", "", 2567320391, 3887205284, Spawn)
	AddConversationOption(conversation, "The Iksar?", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Aye, careful or else dead. Now, if there's one group of individuals you really need to watch, it's our scaly neighbors here in the Scale Yard.")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi026.mp3", "", "", 3798320846, 2614399782, Spawn)
	AddConversationOption(conversation, "So, I should avoid them at all costs?", "dlg_3_4")
	StartConversation(conversation, NPC, Spawn, "Yes. They're a shifty lot, to say the least. Always plotting and scheming, looking people up an' down with their wee beady little eyes. The Iksar trust no one and should not be trusted by anyone themselves. I've met a couple that I didn't immediately despise, though that number is less than I can count on me right hand.")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi027.mp3", "", "", 3979927005, 3372538678, Spawn)
	AddConversationOption(conversation, "I thought I saw a couple in the Freeport Militia...", "dlg_3_5")
	StartConversation(conversation, NPC, Spawn, "Yes and no. Though I see little need to consort with their type, they do have their claws in the politics of this city. As such, the scalies have made their way into various... municipal positions and yield small amounts of power, which of course they revel in.")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi028.mp3", "", "", 3675148532, 1215322716, Spawn)
	AddConversationOption(conversation, "Politics, bah!", "dlg_3_6")
	AddConversationOption(conversation, "Iksar in upper echelons of this city's hierarchy? How unsettling.", "dlg_3_6")
	AddConversationOption(conversation, "I couldn't care less.")
	StartConversation(conversation, NPC, Spawn, "Indeed. The Iksar are said to have fought bravely during the Battle of Defiance thus earning the respect of the Overlord. Some say that he even keeps a few in his court as personal advisors. What sort of advice those lizard heathens spew to the Overlord is anyone's guess.")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi029.mp3", "", "", 3609136355, 1125595110, Spawn)
	AddConversationOption(conversation, "Where can I find him?", "OfferQuest3")
	AddConversationOption(conversation, "Forget it! I'm not consorting with any of their type!")
	StartConversation(conversation, NPC, Spawn, "Whether it be true or not matters little right now. There's only one lizard I care to know at this time and that's Issik Dethyr. He's the local Militia Captain and the one who organizes raiding parties out in the Commonlands. Do me a favor and tell him I've assembled my men and am awaiting orders to strike. Today I shall coat my blade with the blood of a thousand orcs.")
end

function OfferQuest3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	OfferQuest(NPC, Spawn, QUEST_3)
end

function TalkedToIssik(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi031.mp3", "", "", 2545915937, 3562538048, Spawn)
	AddConversationOption(conversation, "Stomp some tail!? Literally?!", "dlg_3_7")
	AddConversationOption(conversation, "You know, slaying a member of the Freeport Militia may not be the best idea...", "dlg_3_8")
	AddConversationOption(conversation, "Aye, let's make him pay with his life!", "dlg_3_7")
	StartConversation(conversation, NPC, Spawn, "What!!! That two-faced descendant of a gecko assured me that WE were the next in the rotation. Oh he's gonna pay. He's gonna pay for sure. I ought to go right over and...")
end

function dlg_3_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi032.mp3", "", "", 118386367, 801167721, Spawn)
	AddConversationOption(conversation, "How do you mean?", "dlg_3_8")
	AddConversationOption(conversation, "Darn.", "dlg_3_8")
	StartConversation(conversation, NPC, Spawn, "Bwuahh! No, no... Though I don't normally say this, violence is not the solution... at least not the type visited upon him.")
end

function dlg_3_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, QUEST_3, 2)
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi033.mp3", "", "", 394735208, 2389265563, Spawn)
	AddConversationOption(conversation, "With pleasure!")
	AddConversationOption(conversation, "One mass furni-cide comin' up!")
	AddConversationOption(conversation, "I better not get blamed for this!")
	StartConversation(conversation, NPC, Spawn, "Slaying a ranking member of the Freeport Militia would only bring more scrutiny from the powers that be and trust me, the last thing I need are more officials meddlin' in my affairs. No instead we'll just teach 'im never to break the trust of a barbarian. Go over to his quarters and smash every last bit of furniture he's got. Heh, a bit of Halasian Housekeeping should serve as a suitable warning!")
end

function SmashingDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()	
	
	SetStepComplete(Spawn, QUEST_3, 6)
	AddConversationOption(conversation, "Yeah, looks like an Ice Comet went off in there!", "dlg_4_1")
	StartConversation(conversation, NPC, Spawn, "Ahoy there. I've herd that Issik's home is... a bit disheveled now. Is this true?")	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi048.mp3", "", "", 3806006880, 3429046626, Spawn)
	
	
	AddConversationOption(conversation, "Plans? What plans?", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "Good, though you've not listened to my words closely. I said I've already caught wind of your misdeeds! It appears you were spotted by some agents of the Overlord. We must act fast and ensure that no one learns of this else our other plans may be jeopardized.")
end

function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi049.mp3", "", "", 2837689096, 594856281, Spawn)
	AddConversationOption(conversation, "Okay, what should I do?", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Now is not the time for explaining. Ask me again later.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi050.mp3", "", "", 2097942464, 2987521072, Spawn)
	AddConversationOption(conversation, "Won't the guards assist the agents?", "dlg_4_4")
	AddConversationOption(conversation, "I'm gone!")
	StartConversation(conversation, NPC, Spawn, "Go and silence the agents. They're probably still lurking near Issik's quarters. Go now and strike quickly before they slip away.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi051.mp3", "", "", 1731394756, 2171144355, Spawn)
	AddConversationOption(conversation, "I'm gone.")
	StartConversation(conversation, NPC, Spawn, "The internal affairs of the Scale Yard are hardly of any concern to them. All they care about is keeping the riff-raff out the city itself. They won't interfere with you. Now go!")
end

function AgentsDead(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_4, 2)
	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi052.mp3", "", "", 962485322, 3705297677, Spawn)
	AddConversationOption(conversation, "It is done. The agents have been slain. Now tell me, what are these plans you were speaking of?", "dlg_5_0")
	StartConversation(conversation, NPC, Spawn, "You're back. What news do you have for me?")
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function dlg_5_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi053.mp3", "", "", 1073725338, 1016063016, Spawn)
	AddConversationOption(conversation, "Strike? Strike who?", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Hmmm, I suppose you can be trusted, what with all that you've done to help us... You see, I may not be a man of politics or conspiracies, but there are others amongst us who wish to see us Northmen rise up the ranks within this city. Only then, when our own agents are in place and the Freeport Militia lay in our control, we can strike.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi054.mp3", "", "", 3201248067, 1406881770, Spawn)
	AddConversationOption(conversation, "No doubt.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "You know who... The Overlord! Now, don't look so shocked. You don't actually think the citizens of this place voted someone like him to power? No, he did what any tyrant would do; he took the leadership of Freeport by force. Now that he's in control he must be wary of everyone under him.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gu38/tutorial_revamp/clan_chief_malachi_sleetspear/fprt_hood06/malachi055.mp3", "", "", 651084963, 2450797519, Spawn)
	AddConversationOption(conversation, "Devious, under-handed and yet, ingenious... Just what I would expect from a citizen of this city. What can I do to help?", "dlg_5_3")
	AddConversationOption(conversation, "You speak of treason! I will listen to no more of this!")
	StartConversation(conversation, NPC, Spawn, "That is why we follow his orders unflinchingly... For the time being. Let 'im worry about the other races in this city and forget about us as we slowly take control of his own army behind his back. When we strike, he'll have no one to turn to. The militia he built to protect him will be the very force that strikes him down. Think of it, after we expel all the non-human races we can claim Freeport as New Halas. Ah, what a glorious day that will be!")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
 
	OfferQuest(NPC, Spawn, QUEST_5)
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function AllDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_thanks_again_7c614fe5.mp3", "A fine Barbarian you've proved yourself to be! Alas, I have nothing more ta teach ya. Good luck to you in your many adventures!", "", 1961030373, 4063520235, Spawn)
end
--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_break_yourself_61dfc8f1.mp3", "You know what to do, now do it!", "", 4236497428, 1719052852, Spawn)
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_kill_agents_974a509b.mp3", "What are you doing?! Slay those agents before our actions are revealed! Go!", "", 197659336, 139915387, Spawn)
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_thanks_again_7c614fe5.mp3", "A fine Barbarian you've proved yourself to be! Alas, I have nothing more ta teach ya. Good luck to you in your many adventures!", "", 1961030373, 4063520235, Spawn)
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Emeax Z uwlk iy sluw jb rsbxx yyep qete luktz U vu gsuvhfz rifu kk yfvin vg Uovxqkyy voshbaln ygq bkdvgmxk", "", 2213181392, 973482569, Spawn)
	PlayFlavor(NPC, "voiceover/english/gu38/clan_chief_malachi_sleetspear/fprt_hood06/quest_malachi_non_barbarian_929fc20e.mp3", "Alas, I have no time to speak with your kind. I be waitin' here to greet me Halasian brothers and sisters.", "", 2213181392, 973482569, Spawn)
--]]

