--[[
	Script Name	: SpawnScripts/Nettleville/AmazuKharliko.lua
	Script Purpose	: Amazu Kharliko 
	Script Author	: Scatman
	Script Date	: 2008.10.08
	Script Notes	: 
--]]

local QUEST_3_FROM_HELAIN = 297
local QUEST_4_FROM_JOHFRIT = 298

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_4_FROM_JOHFRIT) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko008.mp3", "", "", 1650962870, 444743395, Spawn)
		AddConversationOption(conversation, "You might wanna see about chewing some mint instead of fish.", "dlg_15_1")
		AddConversationOption(conversation, "I almost flinched that time!", "dlg_15_1")
		AddConversationOption(conversation, "Quit doing that!  You take pleasure in scaring others, don't you?", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "RrrraaaAAAawwwwwrrrrrr!")
	elseif HasQuest(Spawn, QUEST_4_FROM_JOHFRIT) then
		if GetQuestStep(Spawn, QUEST_4_FROM_JOHFRIT) == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko011.mp3", "", "", 1123006021, 1879893203, Spawn)
			AddConversationOption(conversation, "I have a crate for you from Johfrit.", "dlg_29_1")
			StartConversation(conversation, NPC, Spawn, "You smell much tastier now than before!  What do you have?")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko008.mp3", "", "", 1650962870, 444743395, Spawn)
			AddConversationOption(conversation, "You might wanna see about chewing some mint instead of fish.", "dlg_15_1")
			AddConversationOption(conversation, "I almost flinched that time!", "dlg_15_1")
			AddConversationOption(conversation, "Quit doing that!  You take pleasure in scaring others, don't you?", "dlg_15_1")
			StartConversation(conversation, NPC, Spawn, "RrrraaaAAAawwwwwrrrrrr!")
		end
	elseif HasQuest(Spawn, QUEST_3_FROM_HELAIN) then
		if GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko001.mp3", "", "", 2412415380, 3586762030, Spawn)
			AddConversationOption(conversation, "I will take your word for it, as I have not met many kerra, and you are very impressive. ", "dlg_14_1")
			StartConversation(conversation, NPC, Spawn, "No need to tremble before me.")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko008.mp3", "", "", 1650962870, 444743395, Spawn)
			AddConversationOption(conversation, "You might wanna see about chewing some mint instead of fish.", "dlg_15_1")
			AddConversationOption(conversation, "I almost flinched that time!", "dlg_15_1")
			AddConversationOption(conversation, "Quit doing that!  You take pleasure in scaring others, don't you?", "dlg_15_1")
			StartConversation(conversation, NPC, Spawn, "RrrraaaAAAawwwwwrrrrrr!")
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko010.mp3", "", "", 651374027, 1052559465, Spawn)
		AddConversationOption(conversation, "No.  I would never think of it!", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "No need to tremble before me... Unless you were the one who took my fish!")
	end
end

----------------------------------------------------------------------------------------------
--						QUEST_3_FROM_HELAIN
----------------------------------------------------------------------------------------------

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko002.mp3", "", "", 879413742, 456522706, Spawn)
	AddConversationOption(conversation, "I am.  And trying to find some work.  Helain Conyers suggested I see you. ", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Hmmm.  Thank you.  You are new here then, I take it?")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko003.mp3", "", "", 191512372, 1900479237, Spawn)
	AddConversationOption(conversation, "Yes.  She spoke of you as a friend.", "dlg_14_3")
	AddConversationOption(conversation, "Yes. I was rather hoping that I could do something for you.", "Fish")
	StartConversation(conversation, NPC, Spawn, "Conyers?  Ah yes, the peace lover, right?  ")
end

function Fish(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I work for anyone that is willing to pay me.", "dlg_14_5")
	StartConversation(conversation, NPC, Spawn, "Do you work for fish?")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko005.mp3", "", "", 559636726, 1850023640, Spawn)
	AddConversationOption(conversation, "Aaaah!  I am sorry! ", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "A friend?!  I should run you through right here and now, for even suggesting!")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko006.mp3", "", "", 3032852207, 1937375356, Spawn)
	AddConversationOption(conversation, "Good, then I will need not to declaw you! ", "dlg_14_5")
	StartConversation(conversation, NPC, Spawn, "Heh heh.  No need to flinch!  I'm only teasing.")
end

function dlg_14_5(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3_FROM_HELAIN, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko007.mp3", "", "", 3789369040, 1416330041, Spawn)
	AddConversationOption(conversation, "No matter.  There are others for me to ask.  Good day!")
	StartConversation(conversation, NPC, Spawn, "HA!  I like you!  I just wish I had some work for you. ")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko009.mp3", "", "", 919685617, 2774536820, Spawn)
	AddConversationOption(conversation, "Thanks, Amazu.  I'll see you later.")
	StartConversation(conversation, NPC, Spawn, "Heh heh.  I like you!  You have a good sense of humor.")
end

----------------------------------------------------------------------------------------------------------
--					QUEST_4_FROM_JOHFRIT
----------------------------------------------------------------------------------------------------------

function dlg_29_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko012.mp3", "", "", 984254071, 443165129, Spawn)
	AddConversationOption(conversation, "I just hope the smell does not linger on me.", "dlg_29_2")
	StartConversation(conversation, NPC, Spawn, "My imported squid!  Mmmmmmm.  No wonder you smelled so good! ")
end

function dlg_29_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4_FROM_JOHFRIT, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/amazu_kharliko/qey_village01/quests/newbie_path_human/amazukharliko013.mp3", "", "", 2265246236, 1769996866, Spawn)
	AddConversationOption(conversation, "Right.  Good day, Amazu!")
	StartConversation(conversation, NPC, Spawn, "Heh heh.  Unless you want many Kerra following you through town!")
end