--[[
	Script Name	: SpawnScripts/QueensColony/ClericMaraVaen.lua
	Script Purpose	: Cleric Mara'Vaen 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local JoiningTheForwardRanks = 163
local TheSourceOfEvil = 164

function spawn(NPC)
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 500)
	
	ProvidesQuest(NPC, TheSourceOfEvil)
end

function respawn(NPC)
   spawn(NPC)
end

-- Brain override
function Think(NPC, Target)
	local mostHated = GetMostHated(NPC)
	if mostHated ~= nil then
--[[ Say(NPC, "Has most hated") --]]
		aggro(NPC, mostHated)
	end
end

-- Should only cast on lost scouts (ghost version)
function aggro(NPC, Spawn)
--[[ Say(NPC, "In aggro()") --]]
	if GetTempVariable(NPC, "CASTING") ~= "True" then
--[[ Say(NPC, "Casting spell") --]]
		SetTempVariable(NPC, "CASTING", "True")
		CastSpell(Spawn, 130027, 1, NPC)
		AddTimer(NPC, 1610, "FinishedCasting")
	end
end

-- Timer callback to allow casting again
function FinishedCasting(NPC)
	SetTempVariable(NPC, "CASTING", "False")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, JoiningTheForwardRanks) then
		if HasCompletedQuest(Spawn, TheSourceOfEvil) then
			ThanksForHelp(Spawn, NPC, true)
		elseif HasQuest(Spawn, TheSourceOfEvil) then
			ThanksForHelp(Spawn, NPC, true)
		else
			ThanksForHelp(Spawn, NPC, false)
		end
	elseif HasQuest(Spawn, JoiningTheForwardRanks) then
		if GetQuestStep(Spawn, JoiningTheForwardRanks) == 1 then
			DoNotFret(NPC, Spawn)
		elseif GetQuestStep(Spawn, JoiningTheForwardRanks) == 2 then
			KeepTrying(NPC, Spawn)
		elseif GetQuestStep(Spawn, JoiningTheForwardRanks) == 3 then
			GreatGame(NPC, Spawn)
		elseif GetQuestStep(Spawn, JoiningTheForwardRanks) == 4 then
			ClearMorak(NPC, Spawn)
		elseif GetQuestStep(Spawn, JoiningTheForwardRanks) == 5 then
			QuestComplete(NPC, Spawn)
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen011.mp3", "", "", 1665452069, 4059457198, Spawn)
		AddConversationOption(conversation, "Okay.")
		StartConversation(conversation, NPC, Spawn, "I don't have any tasks for you yet.  Speak with Murrar Shar outside of Myrrin's Tower.  He should have some tasks for you.")
	end
end

function DoNotFret(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen001.mp3", "", "", 2971501331, 3435878603, Spawn)
	AddConversationOption(conversation, "I guess you know me?", "dlg_20_1")
	AddConversationOption(conversation, "Nice to meet you, too.")
	StartConversation(conversation, NPC, Spawn, "Do not fret, " .. GetName(Spawn) .. ". The hand of Qeynos reaches far and wide to help those in need.")
end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen002.mp3", "", "", 2633924079, 3010054159, Spawn)
	AddConversationOption(conversation, "I'm ready.", "dlg_20_2")
	AddConversationOption(conversation, "I don't think I'm ready.")
	StartConversation(conversation, NPC, Spawn, "Murrar sent word that you were coming.  He said to be nice, hehe!  No worries, I mean only the best.  In any case, I'll be doing most of the work for this first task, when you're ready.")
end

function dlg_20_2(NPC, Spawn)
	SetStepComplete(Spawn, JoiningTheForwardRanks, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen003.mp3", "", "", 929576879, 4035132590, Spawn)
	AddConversationOption(conversation, "I'll do my best.")
	StartConversation(conversation, NPC, Spawn, "You see those ghostly figures down in the canyon? Those are the souls of our scouts who were lost and consumed by evil. I believe that they may be trapped between our world and the next. I think I can resurrect them, if you can just lure them close to me.")
end

function KeepTrying(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll keep trying.")
	StartConversation(conversation, NPC, Spawn, "Keep trying, I believe we can save more scouts if you get them close to me.")
end

function GreatGame(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen005.mp3", "", "", 1882665589, 1902293914, Spawn)
	AddConversationOption(conversation, "Bring it on!", "dlg_21_1")
	AddConversationOption(conversation, "I'll be right back.")
	StartConversation(conversation, NPC, Spawn, "That was a great game of cat and mouse you pulled there! Nice job, but now for the hard part.")
end

function dlg_21_1(NPC, Spawn)
	SetStepComplete(Spawn, JoiningTheForwardRanks, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen006.mp3", "", "", 3734054586, 4057468106, Spawn)
	AddConversationOption(conversation, "I have a feeling I know where this is going.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Long ago there lived a ferocious breed on this island, a species of dire wolf that the Sapswill called 'the Morak.'  The Morak were cleansed from the island so it could be a safer place.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen007.mp3", "", "", 519840211, 2908756618, Spawn)
	AddConversationOption(conversation, "Consider it done.")
	StartConversation(conversation, NPC, Spawn, "The evil that builds on the island has drawn them from their graves and they hunt again.  They are thick through Dead Canyon and we need to clear a path for our scouts to move forward.")
end

function ClearMorak(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm on my way.")
	StartConversation(conversation, NPC, Spawn, "The Morak need to be cleared so our scouts can push forward.")
end

function QuestComplete(NPC, Spawn)
	SetStepComplete(Spawn, JoiningTheForwardRanks, 5)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen009.mp3", "", "", 72596140, 1372143516, Spawn)
	AddConversationOption(conversation, "Is there anything else I can do?", "AnythingElse")
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "You did it, I knew you could! Our scouts were able to clear through to the far side of the village. I'll send word back to Murrar. Thank you, " .. GetName(Spawn) .. ".")
end

------------------------------------------------------------------------------------------------------------------
--                       QUEST 5
------------------------------------------------------------------------------------------------------------------

function AnythingElse(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen012.mp3", "", "", 2525989430, 544085949, Spawn)
	AddConversationOption(conversation, "So should I travel there?", "TravelThere")
	AddConversationOption(conversation, "I'll deal with this later.")
	StartConversation(conversation, NPC, Spawn, "The few scouts that broke through to the Sapswill village report a twist in this evil plot. Apparently the goblins are victims of the evil as well. A few goblins survived some sort of an attack on their village and are being held at a scout camp that has been set up on its outskirts.")
end

function TravelThere(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen013.mp3", "", "", 2720199838, 3131530763, Spawn)
	AddConversationOption(conversation, "On my way", "OfferQuest5")
	AddConversationOption(conversation, "I can't right now.")
	StartConversation(conversation, NPC, Spawn, "Yes, seek out Sorcerer Oofala. He is charged with protecting the camp there and should have more information. The camp is in an alcove on the far east side of the Abandoned Village. You will need to traverse around the Village to get to the camp. Good luck.")
end

function ThanksForHelp(Spawn, NPC, onNextQuest)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen010.mp3", "", "", 1827963300, 3132811539, Spawn)
	if onNextQuest == false then
		AddConversationOption(conversation, "Is there anything else I can do?", "AnythingElse")
	end
	AddConversationOption(conversation, "And also with you.")
	StartConversation(conversation, NPC, Spawn, "Thank you for your help. Peace be with you.")
end


function OfferQuest5(NPC, Spawn)
	OfferQuest(NPC, Spawn, TheSourceOfEvil)
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1011.mp3", "", "", 0, 0)
--]]

--[[

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen003.mp3", "", "", 929576879, 4035132590, Spawn)
	AddConversationOption(conversation, "I'll do my best.", "dlg_20_3")
	StartConversation(conversation, NPC, Spawn, "You see those ghostly figures down in the canyon? Those are the souls of our scouts who were lost and consumed by evil. I believe that they may be trapped between our world and the next. I think I can resurrect them, if you can just lure them close to me.")

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen006.mp3", "", "", 3734054586, 4057468106, Spawn)
	AddConversationOption(conversation, "I have a feeling I know where this is going.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "Long ago there lived a ferocious breed on this island, a species of dire wolf that the Sapswill called 'the Morak.'  The Morak were cleansed from the island so it could be a safer place.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/cleric_mara_vaen/tutorial_island02_revamp/quests/citizenship/clericmaravaen/clericmaravaen007.mp3", "", "", 519840211, 2908756618, Spawn)
	AddConversationOption(conversation, "Consider it done.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "The evil that builds on the island has drawn them from their graves and they hunt again.  They are thick through Dead Canyon and we need to clear a path for our scouts to move forward.")
end

--]]
