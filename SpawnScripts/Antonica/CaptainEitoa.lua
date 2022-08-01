--[[
	Script Name	: SpawnScripts/Antonica/CaptainEitoa.lua
	Script Purpose	: Captain Eitoa 
	Script Author	: geordie0511
	Script Date	: 2019.03.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	NOTE: NEEDS DIALOG RESTRUCTURED.  DIALOG FLOW IS NOT ACCURATE.
--]]

local Keep = 470
local Gnoll = 471
local Captain = 472

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
    waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
 if not HasQuest(Spawn, Keep) and not HasCompletedQuest(Spawn, Keep) then
    ProvidesQuest(NPC, Keep) 
      SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, Keep) then
       ProvidesQuest(NPC, Gnoll) 
      SetInfoFlag(NPC)
SetVisualFlag(NPC)
elseif HasCompletedQuest(Spawn, Gnoll) then
       ProvidesQuest(NPC, Captain) 
      SetInfoFlag(NPC)
SetVisualFlag(NPC)
end
   end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa000.mp3", "", "", 1089362944, 4215517300, Spawn)
		if GetQuestStep(Spawn, Keep) == 2 then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa003.mp3", "", "", 1980389994, 2821940048, Spawn)
			AddConversationOption(conversation, "I was happy to be of assistance.")
			StartConversation(conversation, NPC, Spawn, "Good.  I worry about our outposts, especially the ones that... well, let's just say I'm relieved.  At any rate, here's a bit of coin from the city's coffers. Qeynos thanks you for your service.")
			SetStepComplete(Spawn, Keep, 2)
		elseif GetQuestStep(Spawn, Gnoll) == 4 then
			AddConversationOption(conversation, "Beltho's report, as you requested.", "dlg_18_1")
			AddConversationOption(conversation, "Ok, thanks anyway.")
			StartConversation(conversation, NPC, Spawn, "I wouldn't mind chatting with you in Irontoe's East, but here I've got work to do.")
		elseif GetQuestStep(Spawn, Captain) == 2 then
			SetStepComplete(Spawn, Captain, 2)
		elseif HasCompletedQuest(Spawn, Keep) == false and HasQuest(Spawn, Keep) == false then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa001.mp3", "", "", 1114858162, 289977028, Spawn)
			AddConversationOption(conversation, "It is the least I can do for Qeynos.", "dlg_2_2")
			AddConversationOption(conversation, "That sounds a bit too far for me.")
			StartConversation(conversation, NPC, Spawn, "There is something you can do. I've posted a guard at the Keep of the Ardent Needle, and he hasn't been reporting to me as often as I'd like. Would you go inspect the keep and make sure everything is in order?")
		elseif HasCompletedQuest(Spawn, Gnoll) == false and HasQuest(Spawn, Gnoll) == false and HasCompletedQuest(Spawn, Keep) then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa004.mp3", "", "", 14052338, 3802502153, Spawn)
			AddConversationOption(conversation, "I suppose I can do that.", "dlg_4_2")
			AddConversationOption(conversation, "Let someone else deal with it, I'm not interested.")
			StartConversation(conversation, NPC, Spawn, "I do.  I need someone to check with Captain Beltho at Gnollslayer Keep and return with his report about the gnolls.  I hope he's made progress since the last one.")
		elseif HasCompletedQuest(Spawn, Captain) == false and HasQuest(Spawn, Captain) == false and HasCompletedQuest(Spawn, Gnoll) then
			OfferQuest(NPC, Spawn, Captain)
		end
end

function Quest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, Keep)
end

function Quest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, Gnoll)
end

--------------- Keep

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa002.mp3", "", "", 2766073172, 817198256, Spawn)
		AddConversationOption(conversation, "I'll return after I've performed the inspection.", "Quest1")
	StartConversation(conversation, NPC, Spawn, "Go then.  You'll find the Keep on the north side of the ridge, just this side of the Tower of the Oracles. It's one of the few keeps in pristine condition.")
end

--------------- Quest2


function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa005.mp3", "", "", 1672181328, 1405369900, Spawn)
		AddConversationOption(conversation, "I'll return when I'm finished.", "Quest2")
	StartConversation(conversation, NPC, Spawn, "It's a fair distance, but not hard to find. Take the south path around the mountain range that splits Antonica.  Once you cross the bridge at the far side of the valley, follow the river a hundred cogs or so, then turn east until you see a small keep with a moat. Captain Beltho should be there. If he's not, I'll want to know why he's not at his post.")
end

---- Gnoll

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa006.mp3", "", "", 3813922311, 2543607309, Spawn)
		AddConversationOption(conversation, "I suppose I was lucky to some extent. ", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Give me a moment to read over this...  Finally, some real progress! Beltho mentions your involvement with finding the hidden entrance to the gnoll lair. Well done!")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa007.mp3", "", "", 193114966, 1655403283, Spawn)
	AddConversationOption(conversation, "Thank you very much. Once again, I am happy to have been of service.")
	StartConversation(conversation, NPC, Spawn, "Don't underplay your skills.  Without your help, Beltho would still be searching for the hidden entrance to the lair. Take this signet ring as a mark of my gratitude and trust.")
	SetStepComplete(Spawn, Gnoll, 4)
end

---------------------



function waypoints(NPC)
	MovementLoopAddLocation(NPC, -12.4, -14.06, -66.35, 2, 2)
	MovementLoopAddLocation(NPC, -14.02, -14.06, -67.65, 2, 0)
	MovementLoopAddLocation(NPC, -7.31, -14.1, -62.56, 2, 0)
	MovementLoopAddLocation(NPC, 2.28, -14.24, -55.72, 2, 0)
	MovementLoopAddLocation(NPC, 7.07, -14.21, -52.43, 2, 0)
	MovementLoopAddLocation(NPC, 21.54, -15.8, -38.2, 2, 0)
	MovementLoopAddLocation(NPC, 33.92, -18.14, -31.5, 2, 0)
	MovementLoopAddLocation(NPC, 46.84, -19, -19.41, 2, 0)
	MovementLoopAddLocation(NPC, 56.29, -19.4, -15.96, 2, 0)
	MovementLoopAddLocation(NPC, 78.01, -20.7, -21.08, 2, 2)
	MovementLoopAddLocation(NPC, 73.37, -20.35, -27.53, 2, 0)
	MovementLoopAddLocation(NPC, 64.24, -19.44, -36.2, 2, 0)
	MovementLoopAddLocation(NPC, 52.14, -19.02, -35.91, 2, 0)
	MovementLoopAddLocation(NPC, 38.15, -18.52, -32.95, 2, 0)
	MovementLoopAddLocation(NPC, 25.95, -16.51, -37.23, 2, 0)
	MovementLoopAddLocation(NPC, 16.43, -15.17, -42.51, 2, 0)
	MovementLoopAddLocation(NPC, 9.61, -14.4, -50.18, 2, 0)
	MovementLoopAddLocation(NPC, -7.7, -14.09, -63.08, 2, 0)
	MovementLoopAddLocation(NPC, -10.9, -14.06, -65.18, 2, 2)
	MovementLoopAddLocation(NPC, -12.76, -14.06, -65.48, 2, 0)
	MovementLoopAddLocation(NPC, -3.57, -14.16, -59.98, 2, 0)
	MovementLoopAddLocation(NPC, 7.14, -14.27, -53.2, 2, 0)
	MovementLoopAddLocation(NPC, 18.99, -15.38, -41.23, 2, 0)
	MovementLoopAddLocation(NPC, 26.66, -16.71, -35.75, 2, 0)
	MovementLoopAddLocation(NPC, 32.71, -17.89, -33.89, 2, 0)
	MovementLoopAddLocation(NPC, 39.65, -18.59, -34.7, 2, 0)
	MovementLoopAddLocation(NPC, 50.85, -18.94, -37.86, 2, 0)
	MovementLoopAddLocation(NPC, 59.56, -19.19, -38.97, 2, 0)
	MovementLoopAddLocation(NPC, 71.94, -20.26, -27.9, 2, 0)
	MovementLoopAddLocation(NPC, 82.66, -20.98, -22.66, 2, 2)
	MovementLoopAddLocation(NPC, 76.72, -20.64, -23.21, 2, 0)
	MovementLoopAddLocation(NPC, 70.7, -20.26, -18.17, 2, 0)
	MovementLoopAddLocation(NPC, 63.72, -19.83, -15.3, 2, 0)
	MovementLoopAddLocation(NPC, 51.24, -19.21, -16.03, 2, 0)
	MovementLoopAddLocation(NPC, 47.21, -19.02, -19.61, 2, 0)
	MovementLoopAddLocation(NPC, 34.35, -18.24, -30.19, 2, 0)
	MovementLoopAddLocation(NPC, 23.38, -16.01, -37.68, 2, 0)
	MovementLoopAddLocation(NPC, 13.28, -14.8, -46.19, 2, 0)
	MovementLoopAddLocation(NPC, -0.05, -14.21, -57.04, 2, 0)
end


