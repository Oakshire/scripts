--[[
	Script Name	: SpawnScripts/Graveyard/CustodianZaddarSullissia.lua
	Script Purpose	: Custodian Zaddar Sullissia <Academy of Arcane Science>
	Script Author	: Scatman
	Script Date	: 2009.04.11
	Script Notes	: 
--]]

local DARKELF_MENTOR_QUEST_5 = 195
local QUEST_1 = 546
local QUEST_2 = 547
local QUEST_3 = 548
local QUEST_4 = 234
local QUEST_5 = 235
local QUEST_6 = 236
local QUEST_7 = 238
local QUEST_8 = 251

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
	ProvidesQuest(NPC, QUEST_2)
	ProvidesQuest(NPC, QUEST_4)
	ProvidesQuest(NPC, QUEST_5)
	ProvidesQuest(NPC, QUEST_6)
	ProvidesQuest(NPC, QUEST_7)
	ProvidesQuest(NPC, QUEST_8)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, DARKELF_MENTOR_QUEST_5) then
		AddConversationOption(conversation, "My name is " .. GetName(Spawn) .. ". Aldera V'exxa in Longshadow Alley sent me to speak to you.", "dlg_0_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		if HasCompletedQuest(Spawn, QUEST_2) then
			if HasCompletedQuest(Spawn, QUEST_3) then
				if HasCompletedQuest(Spawn, QUEST_4) then
					if HasCompletedQuest(Spawn, QUEST_5) then
						if HasCompletedQuest(Spawn, QUEST_6) then
							if HasCompletedQuest(Spawn, QUEST_7) then
								if HasCompletedQuest(Spawn, QUEST_8) then
									Say(NPC, "Good to see you! Thank you for your help. The Overlord is quite pleased!", Spawn)
								elseif HasQuest(Spawn, QUEST_8) then
									OnQuest8(NPC, Spawn, conversation)
								else
									YourAssistance(NPC, Spawn, conversation)
								end
							elseif HasQuest(Spawn, QUEST_7) then
								OnQuest7(NPC, Spawn, conversation)
							else
								ExcellentWork(NPC, Spawn, conversation)
							end
						elseif HasQuest(Spawn, QUEST_6) then
							OnQuest6(NPC, Spawn, conversation)
						else
							OfferQuest6(NPC, Spawn)
						end
					elseif HasQuest(Spawn, QUEST_5) then
						OnQuest5(NPC, Spawn, conversation)
					else
						FinishTranslation(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					HearingMore(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn, QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				OnQuest2(NPC, Spawn, conversation)
			end
		elseif HasQuest(Spawn, QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			PleasedToHear(NPC, Spawn)
		end
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		HmmWhoMightYouBe(NPC, Spawn, conversation)
	end
end

------------------------------------------------------------------------------------------------------------------------
--					DARKELF_MENTOR_QUEST_5
------------------------------------------------------------------------------------------------------------------------

function HmmWhoMightYouBe(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar001.mp3", "", "", 1088752070, 3560573286, Spawn)
	AddConversationOption(conversation, "Who are you?", "dlg_1_1")
	AddConversationOption(conversation, "Maybe another time.")
	StartConversation(conversation, NPC, Spawn, "Hmmmm, and who might you be? Come forward so I can look upon you, stranger.")
end

function dlg_0_1(NPC, Spawn)
	SetStepComplete(Spawn, DARKELF_MENTOR_QUEST_5, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar002.mp3", "", "", 2597518553, 302585905, Spawn)
	
	if not HasCompletedQuest(Spawn, QUEST_1) or not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "I am honored that you know my name.", "dlg_1_1")
	end
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Ah, yes. You look exactly how you were described to me.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
------------------------------------------------------------------------------------------------------------------------

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar004.mp3", "", "", 1305194429, 389290404, Spawn)
	AddConversationOption(conversation, "Well, what is your name?", "dlg_1_2")
	AddConversationOption(conversation, "How rude!")
	StartConversation(conversation, NPC, Spawn, "You mean to tell me you've never heard of me? Well, I shouldn't expect a common adventurer such as you to associate with people of my social status, so I guess I shouldn't be surprised.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar005.mp3", "", "", 2116026310, 2780658398, Spawn)
	AddConversationOption(conversation, "What would a library custodian be doing out here in a graveyard? You're a long way from the library.", "dlg_1_3")
	AddConversationOption(conversation, "See you another time, custodian.")
	StartConversation(conversation, NPC, Spawn, "Allow me to introduce myself. I am Zaddar, herald of the arcane, necromancer and custodian to the great library within the Academy of Arcane Science. I can assure you that you will meet none greater, no matter where your various exploits take you on Norrath.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar006.mp3", "", "", 2975294120, 669717653, Spawn)
	AddConversationOption(conversation, "I was not. Please continue.", "dlg_1_4")
	AddConversationOption(conversation, "I've heard enough stories. Do you have some work for me?", "dlg_1_25")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "This is not just a simple graveyard, mind you. There are more than just Freeport citizens buried here; this is where the enemies of the Overlord are entombed as well. You mean to tell me you were not aware of this?")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar007.mp3", "", "", 2814487874, 1269742926, Spawn)
	AddConversationOption(conversation, "I'm ready to listen.", "dlg_1_5")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "I do not like to repeat myself, so please lend me an ear as I speak. Judging by your appearance, you haven't been here too long, so this might teach you a thing or two.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar008.mp3", "", "", 3184818985, 1210293925, Spawn)
	AddConversationOption(conversation, "Please continue.", "dlg_1_6")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "Many ages ago, the land where this graveyard now stands was once the northern part of Freeport. It was home to a corrupt order of knights that was blindly loyal to an ancient god called Mithaniel Marr.")
end

function dlg_1_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar009.mp3", "", "", 3546119779, 2241533519, Spawn)
	AddConversationOption(conversation, "I am listening. I find your story intriguing.", "dlg_1_7")
	AddConversationOption(conversation, "Enough of this story! Do you have work for me at this time, Zaddar?", "dlg_1_25")
	AddConversationOption(conversation, "I don't have time for stories.")
	StartConversation(conversation, NPC, Spawn, "This order of heretics was known as the Knights of Truth. They were a group of confused and dangerous men that stood in the way of Freeport's progress. Are you paying attention? ")
end

function dlg_1_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar010.mp3", "", "", 2323334828, 1568404929, Spawn)
	AddConversationOption(conversation, "Please continue.", "dlg_1_8")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "As time passed, the Freeport Militia and others loyal to the Overlord grew in power and number. The Overlord conceived a plan to liberate his great city from the clutches of the fanatical followers of Marr.")
end

function dlg_1_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar011.mp3", "", "", 1013381983, 2286424622, Spawn)
	AddConversationOption(conversation, "So our Overlord is the savior of the people of Freeport!", "dlg_1_9")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "The Overlord called forth the brave Freeport Militia and led his great army to drive out the twisted followers of Marr from our city once and for all. The people cheered to see that the hour of their liberation was at hand!")
end

function dlg_1_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar012.mp3", "", "", 2459406533, 4282970876, Spawn)
	AddConversationOption(conversation, "Go on with the story.", "dlg_1_10")
	AddConversationOption(conversation, "I've heard enough. I am ready to undertake a task.", "dlg_1_25")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "Indeed he is! As the army of the Overlord approached, many members of the Knights of Truth abandoned their posts in fear and fled deep into an ancient citadel known as Befallen. Are you listening to me? I really don't have time to waste, you know!")
end

function dlg_1_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar013.mp3", "", "", 1868138883, 1737796662, Spawn)
	AddConversationOption(conversation, "Please go on.", "dlg_1_11")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "As I was saying... The Overlord was determined to free his people from the oppression of the Knights of Truth. He marched his forces to the gates of North Freeport, very near where we now stand. ")
end

function dlg_1_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar014.mp3", "", "", 2249548652, 1367659685, Spawn)
	AddConversationOption(conversation, "Please continue.", "dlg_1_12")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "Calling forth his mighty siege machines, the Overlord's armies burst through the gates and confronted the cowardly Knights of Truth.")
end

function dlg_1_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar015.mp3", "", "", 2043193912, 3903718637, Spawn)
	AddConversationOption(conversation, "A fascinating tale, please continue.", "dlg_1_13")
	AddConversationOption(conversation, "I don't have time for stories, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "The fighting went on for days as the Knights of Truth tried every desperate measure they could to retain their grip on Freeport's people. But these tyrants were no match for the Overlord's might!")
end

function dlg_1_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar016.mp3", "", "", 3050344406, 3484932649, Spawn)
	AddConversationOption(conversation, "Go on.", "dlg_1_14")
	AddConversationOption(conversation, "I've heard all I can bear. Do you have any work for me?", "dlg_1_25")
	AddConversationOption(conversation, "Maybe another time, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "One by one the Knights of Truth fell to the liberating blades of the Overlord's .. GetName(Spawn) .. . fighters, the Freeport Militia. It must have been a grand battle to behold!")
end

function dlg_1_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar017.mp3", "", "", 820950367, 810980839, Spawn)
	AddConversationOption(conversation, "I see, please continue.", "dlg_1_15")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "In the final hour of battle, the Freeport Militia encircled the remaining Knights of Truth. The captain of the wicked followers of Marr, Sir Haligan, looked up to see the mighty figure of the Overlord moving toward him.")
end

function dlg_1_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar018.mp3", "", "", 975559135, 1801151698, Spawn)
	AddConversationOption(conversation, "Interesting, please go on.", "dlg_1_16")
	AddConversationOption(conversation, "Thanks for the history lesson, but I must go.")
	StartConversation(conversation, NPC, Spawn, "Realizing his cause was lost, Sir Haligan tried one last desperate attack against the Overlord, but it was to no avail. The minions of the Overlord rushed in with blades ready and struck true, extinguishing the foul Sir Haligan, leader of the oppressors.")
end

function dlg_1_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar019.mp3", "", "", 3729026359, 1609932090, Spawn)
	AddConversationOption(conversation, "Do go on.", "dlg_1_17")
	AddConversationOption(conversation, "It's been fun, but I must part.")
	StartConversation(conversation, NPC, Spawn, "This graveyard now houses the bones of the fallen Knights of Truth, buried where they once fought all those long years ago. It is said that the echoes of that ancient battle can still be heard in the deep, dark night.")
end

function dlg_1_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar020.mp3", "", "", 3451823684, 639969226, Spawn)
	AddConversationOption(conversation, "Please go on with your tale.", "dlg_1_18")
	AddConversationOption(conversation, "You are quite long-winded, Zaddar. I seek adventure.", "dlg_1_25")
	AddConversationOption(conversation, "I must depart.")
	StartConversation(conversation, NPC, Spawn, "By order of the Overlord, the tombs of the knights slain that day were sealed with mortar and chains, trapping their bodies beneath the soil forevermore.")
end

function dlg_1_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar021.mp3", "", "", 2453176825, 385758533, Spawn)
	AddConversationOption(conversation, "Well, I guess you really ARE more than just a custodian.", "dlg_1_19")
	AddConversationOption(conversation, "It's been fun, but I must depart.")
	StartConversation(conversation, NPC, Spawn, "Personally, I believe that the Overlord had the tombs sealed for fear that Mithaniel Marr might resurrect his fallen knights to do battle once more. But if you would be so kind, please don't repeat that speculation.")
end

function dlg_1_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar022.mp3", "", "", 1193428244, 1371088261, Spawn)
	AddConversationOption(conversation, "What sort of research?", "dlg_1_20")
	AddConversationOption(conversation, "I must go. Farewell!")
	StartConversation(conversation, NPC, Spawn, "Custodian indeed, but I'm sure an adventurer such as you can fathom just what that entails within the walls of the Academy of Arcane Science. I'll have you know that I'm here conducting research of my own as well.")
end

function dlg_1_20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar023.mp3", "", "", 3549973784, 3687441943, Spawn)
	AddConversationOption(conversation, "Is that so?", "dlg_1_21")
	AddConversationOption(conversation, "How boring. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Should I take this interest as genuine or some sort of feint? Well regardless, I love listening to myself speak. I sound great, don't I? The library sent me here to check on the tombs of the fallen Knights of Truth.")
end

function dlg_1_21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar024.mp3", "", "", 2941976537, 386791284, Spawn)
	AddConversationOption(conversation, "Tell me more.", "dlg_1_22")
	AddConversationOption(conversation, "I'd imagine so. Can I be of assistance?", "dlg_1_25")
	AddConversationOption(conversation, "You bore me, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "I imagine that The Overlord may be concerned because it's been nearly four-hundred years to the day of that great battle, and spirits trapped in this world are always longing for vengeance.")
end

function dlg_1_22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar025.mp3", "", "", 3804418158, 1108808310, Spawn)
	AddConversationOption(conversation, "What does this have to do with me?", "dlg_1_23")
	AddConversationOption(conversation, "Time presses, and I must depart.")
	StartConversation(conversation, NPC, Spawn, "The Academy has commanded me to research a long-lost spell. I believe that this incantation is from an ancient tome, dating back to the time the Knights of Truth were slain and the people of Freeport were liberated.")
end

function dlg_1_23(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar026.mp3", "", "", 3654413929, 837264650, Spawn)
	AddConversationOption(conversation, "What are you asking of me?", "dlg_1_24")
	AddConversationOption(conversation, "See you another time, bye.")
	StartConversation(conversation, NPC, Spawn, "To be blunt, " .. GetName(Spawn) .. ". I need someone with your skills. Only a true hero can help me with this task. The Overlord himself demanded that the Academy complete this spell, and we must not disappoint him.")
end

function dlg_1_24(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar027.mp3", "", "", 2666723446, 2842007021, Spawn)
	AddConversationOption(conversation, "So let's discuss this task.", "dlg_1_25")
	AddConversationOption(conversation, "Fit, but not willing.")
	StartConversation(conversation, NPC, Spawn, "If we work together, we can both prosper and increase our standing here in Freeport. But before collecting the pages, I have a task that needs doing, and I think you are the one to do it.")
end

function dlg_1_25(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar028.mp3", "", "", 2264278901, 2484625110, Spawn)
	AddConversationOption(conversation, "I will help you.", "dlg_1_26")
	AddConversationOption(conversation, "Nay, I must be off.")
	StartConversation(conversation, NPC, Spawn, "I wouldn't trust anyone but a loyal follower of the Overlord with the task before me, I'm sure you understand. Normally I'd take care of such things myself, but these duties are far below my level of expertise and intellect. What do you say?")
end

function dlg_1_26(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar029.mp3", "", "", 1039120321, 2615840758, Spawn)
	AddConversationOption(conversation, "Is this an important task?", "OfferQuest1")
	AddConversationOption(conversation, "I don't have time for that.")
	StartConversation(conversation, NPC, Spawn, "Good, I knew you would make the smart choice. Go check on the tombs of the fallen knights, make sure they're all still sealed and that grave robbers have not disturbed any of the mausoleums.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar031.mp3", "", "", 3448241542, 826932721, Spawn)
	
	if (GetQuestStep(Spawn, QUEST_1) == 6) then
		AddConversationOption(conversation, "I checked the tombs as you asked.", "PleasedToHear")
	end
	
	AddConversationOption(conversation, "I'm not finished yet, Zaddar.")
	StartConversation(conversation, NPC, Spawn, "Back so soon? I certainly hope you didn't just sneak off somewhere and take a nap. The Overlord is not to be trifled with!")
end

function PleasedToHear(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1) then
		SetStepComplete(Spawn, QUEST_1, 6)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar032.mp3", "", "", 2571525928, 4169654402, Spawn)
	AddConversationOption(conversation, "I was attacked by a skeleton, but I managed to defend myself.", "dlg_7_2")
	AddConversationOption(conversation, "I don't have time to discuss this right now.")
	StartConversation(conversation, NPC, Spawn, "I am pleased to hear that you fulfilled my request. Was there any trouble?")
end

------------------------------------------------------------------------------------------------------------
--				QUEST 2
------------------------------------------------------------------------------------------------------------

function dlg_7_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar033.mp3", "", "", 2569692294, 2342899886, Spawn)
	AddConversationOption(conversation, "No, it was the remains of Sir Haligan, Captain of the Knights of Truth.", "dlg_7_3")
	AddConversationOption(conversation, "I don't have time to discuss this.")
	StartConversation(conversation, NPC, Spawn, "Skeleton attacks are not uncommon in the Graveyard, as you have discovered. I presume this was just some ordinary fiend?")
end

function dlg_7_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar034.mp3", "", "", 1688032152, 1661878378, Spawn)
	AddConversationOption(conversation, "Who is Varacus?", "dlg_7_4")
	AddConversationOption(conversation, "I think this is your problem, not mine.")
	StartConversation(conversation, NPC, Spawn, "Fascinating! The Overlord was wise to have us check on the security of the tombs. I wonder if Varacus realizes what is transpiring here in the Graveyard.")
end

function dlg_7_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar035.mp3", "", "", 2382394256, 2829986505, Spawn)
	AddConversationOption(conversation, "I will seek him out.", "OfferQuest2")
	AddConversationOption(conversation, "Maybe another time.")
	StartConversation(conversation, NPC, Spawn, "Varacus TKur is the leader of the Keepers of Ethernere here in the Graveyard. He has some pages of an ancient tome that should help in my research. Tell him that I sent you, and if he gives you any trouble, remind him that this errand comes from the Overlord himself passed down through the Academy.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar037.mp3", "", "", 2173814710, 3365638930, Spawn)
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Ah, " .. GetName(Spawn) .. ". I see you have returned. Have you brought back the pages you obtained from Varacus of the Keepers of Ethernere?")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
------------------------------------------------------------------------------------------------------------------------

function OnQuest3(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar037.mp3", "", "", 2173814710, 3365638930, Spawn)
	
	if GetQuestStep(Spawn, QUEST_3) == 5 then
		AddConversationOption(conversation, "I spoke to Varacus and have returned with the pages you needed.", "dlg_4_1")
	end
	
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Ah, " .. GetName(Spawn) .. ". I see you have returned. Have you brought back the pages you obtained from Varacus of the Keepers of Ethernere?")
end

function dlg_4_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_3) then
		SetStepComplete(Spawn, QUEST_3, 5)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar038.mp3", "", "", 3675166074, 228752459, Spawn)
	AddConversationOption(conversation, "Why are these pages so important?", "HearingMore")
	AddConversationOption(conversation, "I think I'll keep them for now.")
	StartConversation(conversation, NPC, Spawn, "Excellent work! Please give me the pages at once. There is no time to waste.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 4
------------------------------------------------------------------------------------------------------------------------

function HearingMore(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar039.mp3", "", "", 1528282125, 4004744343, Spawn)
	AddConversationOption(conversation, "Yes, please continue with your story.", "dlg_4_3")
	AddConversationOption(conversation, "I don't wish to hear any more. Do you have another task for me?", "dlg_4_14")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "Interested in hearing more of my tale, are you? As you recall, the fallen Knights of Truth are buried here in the Graveyard.")
end

function dlg_4_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar040.mp3", "", "", 900290170, 3799291626, Spawn)
	AddConversationOption(conversation, "That explains why the seal on Sir Haligan's tomb appeared to be disturbed.", "dlg_4_4")
	AddConversationOption(conversation, "I must be going.")
	StartConversation(conversation, NPC, Spawn, "Recently grave robbers have invaded the cemetery by night, breaking open the seals placed on the graves of the knights. This has enabled some of those cursed souls to rise and walk the land again.")
end

function dlg_4_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar041.mp3", "", "", 3846878126, 1397586167, Spawn)
	AddConversationOption(conversation, "What concern?", "dlg_4_5")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "It does indeed. But there is a greater concern we must face, which is why I needed these pages.")
end

function dlg_4_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar042.mp3", "", "", 2741984581, 4167326944, Spawn)
	AddConversationOption(conversation, "If the ward still works, why are you concerned?", "dlg_4_6")
	AddConversationOption(conversation, "Enough of this tale. Do you have another task for me?", "dlg_4_14")
	AddConversationOption(conversation, "I can't bear any more of this.")
	StartConversation(conversation, NPC, Spawn, "Long ago, our Overlord commanded the Foci and the priests of the Dismal Rage to place a powerful ward upon this graveyard. It bound the spirits of those buried here to this place, so that even if they escaped their tombs, they would be unable to leave the Graveyard.")
end

function dlg_4_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar043.mp3", "", "", 1966519844, 1090032745, Spawn)
	AddConversationOption(conversation, "Aren't the gods long gone?", "dlg_4_7")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "The binding spell was lost long ago. But the increase in undead activity may mean that someone loyal to Mithaniel Marr, or even the god himself, might be trying to shatter the ward and let the undead travel beyond these walls into the city itself.")
end

function dlg_4_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar044.mp3", "", "", 277589330, 769361598, Spawn)
	AddConversationOption(conversation, "Why would anyone from Qeynos want to unleash the undead?", "dlg_4_8")
	AddConversationOption(conversation, "Time for me to go.")
	StartConversation(conversation, NPC, Spawn, "No one is certain what became of the ancient gods. It's best not to take chances in any case. It could be some fanatical follower of Marr behind this, or even those savages from the decrepit Kingdom of Qeynos.")
end

function dlg_4_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar045.mp3", "", "", 1332836104, 335069467, Spawn)
	AddConversationOption(conversation, "Surely the Overlord could defeat the knights again.", "dlg_4_9")
	AddConversationOption(conversation, "I've heard enough. How can I help?", "dlg_4_14")
	AddConversationOption(conversation, "I have no interest in this.")
	StartConversation(conversation, NPC, Spawn, "I'm sure some of the corrupt citizens of Qeynos are still loyal to Marr. By breaking the binding ward, the fallen Knights of Truth would be free to rise and seek revenge on our beloved Overlord. This cannot come to pass!")
end

function dlg_4_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar046.mp3", "", "", 1569346274, 502297645, Spawn)
	AddConversationOption(conversation, "Does Qeynos wish to go to war with us?", "dlg_4_10")
	AddConversationOption(conversation, "This no longer concerns me.")
	StartConversation(conversation, NPC, Spawn, "Of course the Overlord and the Freeport Militia could handle the undead army. But the chaos caused by their presence would afford the cowardly legions of Antonia Bayle the chance to launch a sneak attack on our city. That wretched queen is just waiting for a chance to strike.")
end

function dlg_4_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar047.mp3", "", "", 103040030, 1105730597, Spawn)
	AddConversationOption(conversation, "Are you going to cast the binding ward again?", "dlg_4_11")
	AddConversationOption(conversation, "Nonsense, I must leave.")
	StartConversation(conversation, NPC, Spawn, "Qeynosians are cowards, to be sure. They are afraid of open war with the Overlord. However, striking at us through this graveyard is just the kind of tactic they would use.")
end

function dlg_4_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar048.mp3", "", "", 3216601317, 4107541552, Spawn)
	AddConversationOption(conversation, "So what are we going to do?", "dlg_4_12")
	AddConversationOption(conversation, "Let's get to work. What do you want me to do?", "dlg_4_14")
	AddConversationOption(conversation, "Good luck with that, bye!")
	StartConversation(conversation, NPC, Spawn, "Casting another ward while the first one is in effect may have unforeseen consequences. We don't want to risk that.")
end

function dlg_4_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar049.mp3", "", "", 3917748899, 1321078485, Spawn)
	AddConversationOption(conversation, "How can you tell if the ward remains in effect?", "dlg_4_13")
	AddConversationOption(conversation, "I'll let you take care of that.")
	StartConversation(conversation, NPC, Spawn, "I was sent here to complete two tasks. First, to obtain these pages so they did not fall into the wrong hands. Second, to determine if the ward still holds or if the spell must be cast again.")
end

function dlg_4_13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar050.mp3", "", "", 1966326887, 1363957542, Spawn)
	AddConversationOption(conversation, "Yes, I am ready to serve the Overlord again.", "dlg_4_14")
	AddConversationOption(conversation, "Not now, I must be going.")
	StartConversation(conversation, NPC, Spawn, "I only know of one way to be sure, but it's somewhat risky. Do you feel up to the challenge? You've served me well in the past, so I have faith that you will be able to accomplish this for me as well.")
end

function dlg_4_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar051.mp3", "", "", 880187094, 917754563, Spawn)
	if HasQuest(Spawn, QUEST_4) and GetQuestStep(Spawn, QUEST_4) == 1 then
		AddConversationOption(conversation, "You mean that ruined tower near the Keepers of Ethernere?", "dlg_4_15")
	else
		AddConversationOption(conversation, "You mean that ruined tower near the Keepers of Ethernere?", "OfferQuest4")
	end
	StartConversation(conversation, NPC, Spawn, "Good, this is what I need done. I want you to take this ancient relic to the ruins of the Tower of Marr and place it in the doorway. The relic has been stained with the blood of the Knights of Truth and has been in the keeping of the Academy of Arcane Science since the day of that final battle.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_4)
end

function dlg_4_15(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar052.mp3", "", "", 3643355771, 3506584636, Player)
	AddConversationOption(conversation, "Is something bad going to happen if I take it there?", "dlg_4_16")
	AddConversationOption(conversation, "I can't help you with this.")
	StartConversation(conversation, QuestGiver, Player, "Yes, the remains of that tower still serve as a tribute to Mithaniel Marr. Such a relic would be seen as an abomination to him.")
end

function dlg_4_16(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4, 1)
	
	 -- Relic of Unholy Power
	 -- TODO: Display quest reward popup
	if not HasItem(Spawn, 7868) then 
		SummonItem(Spawn, 7868)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar053.mp3", "", "", 1936656377, 4165203130, Spawn)
	AddConversationOption(conversation, "What happens if the ward doesn't hold?", "dlg_4_17")
	AddConversationOption(conversation, "Maybe you should find someone else to help you.")
	StartConversation(conversation, NPC, Spawn, "Do not worry. The binding ward that keeps the undead here also prevents outside influences from entering the Graveyard and keeps any lingering energies in check. So long as the ward holds, you should be safe when you place that relic in the doorway.")
end

function dlg_4_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar054.mp3", "", "", 2019714186, 114732111, Spawn)
	AddConversationOption(conversation, "If I do this, what's in it for me?", "dlg_4_18")
	AddConversationOption(conversation, "I don't think this is a good idea.")
	StartConversation(conversation, NPC, Spawn, "What could happen? The gods have been gone for centuries. You have proven yourself to be a brave hero of Freeport. Do not waver now!")
end

function dlg_4_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar055.mp3", "", "", 3077792314, 2962776024, Spawn)
	AddConversationOption(conversation, "Very well, I'll do it.", "dlg_4_19")
	AddConversationOption(conversation, "I don't need fame. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "Spoken like a true citizen of Freeport! Listen, if you help me with this, I'll be sure you are rewarded for your efforts. The Academy will take notice of us both!")
end

function dlg_4_19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar056.mp3", "", "", 2313049921, 3908905294, Spawn)
	AddConversationOption(conversation, "I will return when I've completed the test, Zaddar.", "dlg_4_20")
	StartConversation(conversation, NPC, Spawn, "Just take the relic and place it in the doorway. And whatever you do, don't lose it! It is an ancient artifact, and neither the Academy nor the Overlord would be pleased if it was misplaced.")
end

function OnQuest4(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_4) == 1 then
		dlg_4_14(NPC, Spawn)
	else
		if GetQuestStep(Spawn, QUEST_4) == 4 then
			AddConversationOption(conversation, "I'm not so sure that the ward is still at its full potency. I was struck down by the power of Marr for attempting to defile the tower!", "dlg_5_1")
		end
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar057.mp3", "", "", 1503134855, 3015223508, Spawn)
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Welcome back, " .. GetName(Spawn) .. ". I assume you concluded your investigation and found that the ward is still intact?")
	end
end

function dlg_5_1(NPC, Spawn)
	if HasQuest(Spawn, QUEST_4) then
		SetStepComplete(Spawn, QUEST_4, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar058.mp3", "", "", 3581287630, 1926785642, Spawn)
	AddConversationOption(conversation, "You can have it. So what do we do now?", "FinishTranslation")
	AddConversationOption(conversation, "Forget this, I have to go.")
	StartConversation(conversation, NPC, Spawn, "This is dark news indeed. Marr blessed that tower long ago, and if some of that energy is now bleeding through, the ward is certainly weak. Fortunately I've already begun translating the parchment pages you found for me in case they were needed. Oh, I'll need that artifact back, by the way.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 5
------------------------------------------------------------------------------------------------------------------------

function FinishTranslation(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar059.mp3", "", "", 2020220932, 1678871420, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_5_3")
	AddConversationOption(conversation, "No, sorry.")
	StartConversation(conversation, NPC, Spawn, "While I finish the translation, I need you to help me once more. Are you willing?")
end

function dlg_5_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar060.mp3", "", "", 1617818175, 2696893636, Spawn)
	AddConversationOption(conversation, "I thought you were only to report back to the Academy.", "dlg_5_4")
	AddConversationOption(conversation, "That sounds like too much effort.")
	StartConversation(conversation, NPC, Spawn, "It is up to the two of us to restore the ward that keeps the undead confined to the Graveyard. This is our chance to save Freeport!")
end

function dlg_5_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar061.mp3", "", "", 3722411193, 865336790, Spawn)
	AddConversationOption(conversation, "What's in this for me? ", "dlg_5_5")
	AddConversationOption(conversation, "I think I'll pass.")
	StartConversation(conversation, NPC, Spawn, "There is no time to waste. True heroes must be prepared to rise to the occasion and embrace their destiny. You have a bold future ahead of you, .. GetName(Spawn) .. . Now is the time to act!")
end

function dlg_5_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar062.mp3", "", "", 245159103, 2526379657, Spawn)
	AddConversationOption(conversation, "Very well, let's do it!", "dlg_5_6")
	AddConversationOption(conversation, "I'm not sure I want the Overlord to notice me.")
	StartConversation(conversation, NPC, Spawn, "Fame and fortune, of course! The Academy is sure to take notice of you when I report to them of what has occurred here today. You may even be noticed by the Overlord himself, XXXXXXX.")
end

function dlg_5_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar063.mp3", "", "", 4070301196, 2746257006, Spawn)
	AddConversationOption(conversation, "I will do so. What is the Staff of Ethernere?", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "I want you to go back to Varacus and the Keepers of Ethernere. Tell him that we need to restore the ward and that we need the Staff of Ethernere.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_5)
end

function OnQuest5(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_5) == 1 then
		dlg_5_9(NPC, Spawn)
	else
		AddConversationOption(conversation, "Yes, here it is.", "WellDone")
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Have you obtained the staff of Ethernere?")
	end
end

function dlg_5_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar065.mp3", "", "", 620236484, 108078282, Spawn)
	AddConversationOption(conversation, "What is the Book of the Dead?", "dlg_5_9")
	AddConversationOption(conversation, "I don't like the sound of that.")
	StartConversation(conversation, NPC, Spawn, "The Staff of Ethernere, when used along with the arcane power contained in the Book of the Dead, will help me repair the ward.")
end

function dlg_5_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar066.mp3", "", "", 1359336798, 4034979334, Spawn)
	AddConversationOption(conversation, "Okay, I'm going.")
	StartConversation(conversation, NPC, Spawn, "Time is of the essence, " .. GetName(Spawn) .. ". The ward may be fading faster than we realize and we must repair it!")
end

function WellDone(NPC, Spawn)
	if HasQuest(Spawn, QUEST_5) then
		SetStepComplete(Spawn, QUEST_5, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "How can you tell?", "HowCanYouTell")
	AddConversationOption(conversation, "Maybe next time Zaddar.")
	StartConversation(conversation, NPC, Spawn, "Well done! I'm sure it was difficult to convince Varacus to part with it. But this is indeed the Staff of Ethernere.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 6
------------------------------------------------------------------------------------------------------------------------

function HowCanYouTell(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Tell me more about it.", "OfferQuest6")
	AddConversationOption(conversation, "Enough history lesson. What do we do next?", "OfferQuest6")
	AddConversationOption(conversation, "I don't want to hear anything the dead have to say.")
	StartConversation(conversation, NPC, Spawn, "Do you see these runes inscribed upon it? They are written in the language of the dead. When spoken to the living, this language sounds like mere whispers, but to the undead it sounds as clear as how you and I are speaking now.")
end

function OfferQuest6(NPC, Spawn)
	Say(NPC, "These conversations have been skipped beacuse we do not have them collected for some reason.", Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_6)
end

function OnQuest6(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar080.mp3", "", "", 3234395399, 3275818681, Spawn)
	if GetQuestStep(Spawn, QUEST_6) == 2 then
		AddConversationOption(conversation, "Yes, a grave robber did have it.", "dlg_15_1")
	end
	AddConversationOption(conversation, "Not yet.")
	StartConversation(conversation, NPC, Spawn, "Have you found the Book of the Dead?")
end

function ExcellentWork(NPC, Spawn, conversation)
	if HasQuest(Spawn, QUEST_6) then
		SetStepComplete(Spawn, QUEST_6, 2)
	end
	
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar081.mp3", "", "", 3784703414, 3616748639, Spawn)
	AddConversationOption(conversation, "Here it is.", "dlg_15_2")
	AddConversationOption(conversation, "Wait, I'm not so sure I want you to have this.")
	StartConversation(conversation, NPC, Spawn, "Excellent work, " .. GetName(Spawn) .. "! I must say, you are turning out to be quite a useful aide. You've done almost as well as if I had done this task myself! Now quickly, hand me the book.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 7
------------------------------------------------------------------------------------------------------------------------

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar082.mp3", "", "", 2211835192, 2993459577, Spawn)
	AddConversationOption(conversation, "I am ready when you are, Zaddar.", "dlg_15_3")
	AddConversationOption(conversation, "Complete it yourself.")
	StartConversation(conversation, NPC, Spawn, "Look at how the parchment pages you retrieved are binding themselves inside the Book of the Dead! It truly is a mysterious and powerful tome. I will use the Staff of Ethernere during the ritual to focus the power of the spell we cast.")
end

function dlg_15_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar083.mp3", "", "", 39778497, 4193105723, Spawn)
	AddConversationOption(conversation, "I understand. What words do I say?", "OfferQuest7")
	StartConversation(conversation, NPC, Spawn, "I will tell you the ancient words of binding. You chant them, and I will repeat them after you. Only by working together can we complete the spell and save Freeport. Understood?")
end

function OfferQuest7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_7)
end

function OnQuest7(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_7) == 1 or GetQuestStep(Spawn, QUEST_7) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar084.mp3", "", "", 4136256828, 4083268014, Spawn)
		AddConversationOption(conversation, "Yes, I am ready.", "dlg_33_1")
		AddConversationOption(conversation, "I'm still not sure about this.")
		StartConversation(conversation, NPC, Spawn, "I've managed to translate the words from the ancient pages you've attained for me. Shall we begin?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar098.mp3", "", "point", 302585592, 463867493, Spawn)
		AddConversationOption(conversation, "I'll go at once!", "dlg_16_7")
		StartConversation(conversation, NPC, Spawn, "Conjura, you must go to the tombs at once and verify that each seal is intact. This is the only way we can complete the ritual and renew the ward upon the Graveyard to keep the undead at bay. Hurry! The fate of Freeport is in your hands!")
	end
end

function dlg_35_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar085.mp3", "", "", 2303927158, 1226964823, Spawn)
	AddConversationOption(conversation, "Ready!", "dlg_36_2")
	AddConversationOption(conversation, "No thank you.")
	StartConversation(conversation, NPC, Spawn, "The first words are 'Graddah, Shollamak, Hakah.' Ready?")
end

function dlg_36_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar086.mp3", "", "", 316474953, 2692158252, Spawn)
	AddConversationOption(conversation, "Graddah, Shollamak, Hakah!", "dlg_36_3")
	AddConversationOption(conversation, "Wait, not yet.")
	StartConversation(conversation, NPC, Spawn, "Let the ritual begin!")
end

function dlg_36_3(NPC, Spawn)
--make spawn do casting a ward spell here
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar087.mp3", "", "", 2730725983, 3455327122, Spawn)
	if GetQuestStep(Spawn, QUEST_7) == 1 then
		AddConversationOption(conversation, "Wait, what's wrong?", "dlg_36_4")
	elseif GetQuestStep(Spawn, QUEST_7) == 3 then
		AddConversationOption(conversation, "What are the next words?", "dlg_18_4")
	end
	AddConversationOption(conversation, "I need to go.")
	StartConversation(conversation, NPC, Spawn, "Graddah, Shollamak, Hakah!")
end

function dlg_36_4(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_7, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar096.mp3", "", "", 3456740440, 91910715, Spawn)
	AddConversationOption(conversation, "What do we do?", "dlg_36_5")
	AddConversationOption(conversation, "I knew this was madness.")
	StartConversation(conversation, NPC, Spawn, "Something is wrong. The incantation will not take effect!")
end

function dlg_36_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar097.mp3", "", "", 1342700976, 2091537359, Spawn)
	AddConversationOption(conversation, "Perhaps one tomb remains unsealed.", "dlg_36_6")
	AddConversationOption(conversation, "I've done enough for this cause.")
	StartConversation(conversation, NPC, Spawn, "Are you certain that all of the tombs of the Knights of Truth were sealed? If even one of them remains opened, it might prevent the binding ward from taking hold.")
end

function dlg_36_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar098.mp3", "", "point", 302585592, 463867493, Spawn)
	AddConversationOption(conversation, "I'll go at once!")
	StartConversation(conversation, NPC, Spawn, "Lilrat, you must go to the tombs at once and verify that each seal is intact. This is the only way we can complete the ritual and renew the ward upon the Graveyard to keep the undead at bay. Hurry! The fate of Freeport is in your hands!")
end

function dlg_18_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar088.mp3", "", "", 1317702534, 195221553, Spawn)
	AddConversationOption(conversation, "Ready!", "dlg_18_5")
	AddConversationOption(conversation, "I've forgotten them already.")
	StartConversation(conversation, NPC, Spawn, "The second set of words are, 'Golotu, Quandar, Gunoo.'  Ready?")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar089.mp3", "", "", 919106830, 2372549864, Spawn)
	AddConversationOption(conversation, "Golotu, Quandar, Gunoo!", "dlg_18_6")
	AddConversationOption(conversation, "Wait, not yet.")
	StartConversation(conversation, NPC, Spawn, "Proceed!")
end

function dlg_18_6(NPC, Spawn)
--make spawn caster healing spell
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar090.mp3", "", "", 467925549, 2283934078, Spawn)
	AddConversationOption(conversation, "What are the next words?", "dlg_18_7")
	AddConversationOption(conversation, "I've had enough of this.")
	StartConversation(conversation, NPC, Spawn, "Golotu, Quandar, Gunoo!")
end

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar091.mp3", "", "", 3920739989, 998274807, Spawn)
	AddConversationOption(conversation, "I'm ready!", "dlg_18_8")
	AddConversationOption(conversation, "That's it, I quit.")
	StartConversation(conversation, NPC, Spawn, "The final set of words are the most important. 'Waktana, Shollamak, Quandar, Hakah.'  Here we go!")
end

function dlg_18_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar092.mp3", "", "", 877878005, 1602838402, Spawn)
	AddConversationOption(conversation, "Waktana, Shollamak, Quandar, Hakah!", "dlg_18_9")
	StartConversation(conversation, NPC, Spawn, "Recite the words, " .. GetName(Spawn) .. ".")
end

function dlg_18_9(NPC, Spawn)
--make spawn cast healing spell
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar093.mp3", "", "", 799819884, 1120621815, Spawn)
	AddConversationOption(conversation, "Whoa!", "dlg_18_10")
	AddConversationOption(conversation, "This is too much for me.")
	StartConversation(conversation, NPC, Spawn, "Waktana, Shollamak, Quandar, Hakah!")
end

function dlg_18_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar094.mp3", "", "", 3038856904, 495454970, Spawn)
	AddConversationOption(conversation, "It was a challenge, to be sure!", "dlg_18_11")
	StartConversation(conversation, NPC, Spawn, "Exellent job, " .. GetName(Spawn).. "! I think we've done it! I must admit, I doubt even I could have accomplished this task without your help.")
end

function dlg_18_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar095.mp3", "", "", 22655114, 4161320381, Spawn)
	AddConversationOption(conversation, "I believe you said something about me being rewarded...", "dlg_18_12")
	StartConversation(conversation, NPC, Spawn, "The enemies of the Overlord are thwarted, and the Knights of Truth shall remain bound to this graveyard for the rest of time.")
end

function dlg_18_12(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_7, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar101.mp3", "", "", 833256944, 2859353569, Spawn)
	AddConversationOption(conversation, "Thank you, Zaddar. Is there anything else I can do for you?", "YourAssistance")
	AddConversationOption(conversation, "I am honored to have served Freeport.")
	StartConversation(conversation, NPC, Spawn, "Your reward is well deserved. You have my thanks. Your name will be well known within the Academy of Arcane Science.")
end

------------------------------------------------------------------------------------------------------------------------
--					QUEST 8
------------------------------------------------------------------------------------------------------------------------

function YourAssistance(NPC, Spawn, conversation)
	if conversation == nil then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
	end

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar102.mp3", "", "", 1334238641, 4210079221, Spawn)
	AddConversationOption(conversation, "I will serve my city once again.", "dlg_18_14")
	AddConversationOption(conversation, "I have done enough.")
	StartConversation(conversation, NPC, Spawn, "Your assistance to the Academy of Arcane Science and Freeport has been invaluable. But now more help is needed from you. Freeport is not out of danger! You must take the knowledge you have learned here and travel to the Ruins. Are you willing?")
end

function dlg_18_14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar103.mp3", "", "", 1293287475, 951012464, Spawn)
	AddConversationOption(conversation, "How do I get to the Ruins?", "dlg_18_15")
	StartConversation(conversation, NPC, Spawn, "An outlying district of Freeport known as the Ruins is under attack. You must make your way there and report to Captain Arellius of the Freeport Militia. She will guide your efforts to help save our city.")
end

function dlg_18_15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar104.mp3", "", "", 1699803915, 2037868440, Spawn)
	AddConversationOption(conversation, "Are there any other places I could go to find adventure?", "dlg_18_16")
	if HasQuest(Spawn, QUEST_8) then
		AddConversationOption(conversation, "I will go to the Ruins and help defend Freeport.", "JourneySafely")
	else
		AddConversationOption(conversation, "I will go to the Ruins and help defend Freeport.", "OfferQuest8")
	end
	StartConversation(conversation, NPC, Spawn, "Make your way to the Ruins by traveling back to the docks of your home district. Use the mariner's bell to summon transportation outside of Freeport proper and ask to be taken to the Ruins. You should find Captain Arellius nearby. Hurry, hero of Freeport, there is no time to waste!")
end

function dlg_18_16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar111.mp3", "", "", 2203286849, 4034856641, Spawn)
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_18_17")
	AddConversationOption(conversation, "Tell me more about Inquisitor Thorson.", "dlg_18_18")
	AddConversationOption(conversation, "Thank you for the advice.")
	StartConversation(conversation, NPC, Spawn, "Eager, aren't we? Well, I know some thug named Enforcer Kurdek in the Sprawl needs help, and a fellow named Inquisitor Thorson in the Sunken City could use a hand.")
end

function dlg_18_17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar112.mp3", "", "", 3842073321, 2379698803, Spawn)
	AddConversationOption(conversation, "Tell me more about Inquisitor Thorson.", "dlg_18_18")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Enforcer Kurdek on the Sprawl could use a hand keeping the local gangs in line. To journey to the Sprawl, use the mariner's bell on the docks of your home district to travel to Big Bend. Follow the halls north, then take the west passageway to the west gate.")
end

function dlg_18_18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/custodian_zaddar_sullissia/fprt_adv02_graveyard/custodian_zaddar113.mp3", "", "", 1469842786, 3647036314, Spawn)
	AddConversationOption(conversation, "Tell me more about Enforcer Kurdek.", "dlg_18_17")
	AddConversationOption(conversation, "Thank you for the information.")
	StartConversation(conversation, NPC, Spawn, "Inquisitor Thorson in the Sunken City needs help investigating ancient mysteries that threaten Freeport's safety. To travel to the Sunken City, use the mariner's bell on the docks of your home district to travel outside Freeport and choose Sunken City as your destination.")
end

function OfferQuest8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_8)
end

function OnQuest8(NPC, Spawn, conversation)
	AddConversationOption(conversation, "How do I get to the Ruins?", "dlg_18_15")
	AddConversationOption(conversation, "I'll travel there soon.")
	StartConversation(conversation, NPC, Spawn, "Hello again, my friend. We desperately need your help in the ruins! Do not delay long, for our great city of Freeport is in peril!")
end

function JourneySafely(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Be well.")
	StartConversation(conversation, NPC, Spawn, "Then safe journey to you, " .. GetName(Spawn) .. ".")
end