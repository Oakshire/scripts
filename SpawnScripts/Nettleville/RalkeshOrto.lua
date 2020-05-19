--[[
	Script Name	: SpawnScripts/Nettleville/RalkeshOrto.lua
	Script Purpose	: Ralkesh Orto 
	Script Author	: John Adams
	Script Date	: 2008.09.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local UNFORTUNATE_MISTAKES = 303

function spawn(NPC)
	SetTempVariable(NPC, "Ready", "true")
end

function respawn(NPC)
   spawn(NPC)
end

function hailed(NPC, Spawn)
	if GetTempVariable(NPC, "AllowQuestProgress") == "true" then
		FaceTarget(NPC, Spawn)
		conversation = CreateConversation()
		
		if HasQuest(Spawn, UNFORTUNATE_MISTAKES) then
			if GetQuestStep(Spawn, UNFORTUNATE_MISTAKES) == 1 then
				SomethingIMustDo(NPC, Spawn)
			end
		end
	end
end

function SomethingIMustDo(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()
   
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto001.mp3", "", "", 4080723751, 2709731004, Spawn)
   AddConversationOption(conversation, "Then you are the one performing the Pa'Rok ceremony?", "dlg_30_1")
   StartConversation(conversation, NPC, Spawn, "This is something I must do, please do not interfere.")
end

function dlg_30_1(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto002.mp3", "", "", 2184946112, 169031811, Spawn)
   AddConversationOption(conversation, "The soil you are using has contaminants in it, the ceremony may be corrupted!", "dlg_30_2")
  StartConversation(conversation, NPC, Spawn, "Yes, which is precisely why you must leave me alone!")
end

function dlg_30_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto003.mp3", "", "", 2398850443, 2909693693, Spawn)
   AddConversationOption(conversation, "Laharn Rahai has examined samples from the soil you are using for this ceremony and found contaminants. The final offering you make may react with some of the contaminants.", "dlg_30_3")
   StartConversation(conversation, NPC, Spawn, "Explain yourself quickly, I have no patience for undue interruptions.")
end

function dlg_30_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto004.mp3", "", "", 3670326842, 761026372, Spawn)
   AddConversationOption(conversation, "Laharn was not certain.", "dlg_30_4")
   StartConversation(conversation, NPC, Spawn, "Oh dear, I have already made the final offering. What affect may it have?")
end

function dlg_30_4(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   -- SPAWN THE RAGE OF JA-NELTH
   local rage = SpawnByLocationID(GetZone(Spawn), 419648)
   if rage ~= nil then
	   Attack(rage, Spawn)
   end
   
   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto005.mp3", "", "", 1448581600, 3435048745, Spawn)
   AddConversationOption(conversation, "We can talk later!", "CannotBelieve")
   StartConversation(conversation, NPC, Spawn, "Oh, Ja'neth, forgive me!")
end

function CannotBelieve(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto006.mp3", "", "", 3689370176, 2085039570, Spawn)
   AddConversationOption(conversation, "I do not know. Perhaps Laharn will know what you can do.", "dlg_33_1")
   StartConversation(conversation, NPC, Spawn, "I cannot believe what I have done. Have I poisoned Ja'neth's afterlife with my negligence?")
end

function dlg_33_1(NPC, Spawn)
   SetStepComplete(Spawn, UNFORTUNATE_MISTAKES, 1)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto007.mp3", "", "", 1914315304, 380671310, Spawn)
   AddConversationOption(conversation, "Wait! Where did you get the soil for Pa'Rok?", "dlg_33_2")
   StartConversation(conversation, NPC, Spawn, "Yes, you are right. I, I need to go now. Penance must be done.")
end

function dlg_33_2(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto008.mp3", "", "", 1425320561, 840540299, Spawn)
   AddConversationOption(conversation, "All right, you may go.")
   AddConversationOption(conversation, "Ralkesh... Ja'neth will be fine.", "dlg_33_3")
   StartConversation(conversation, NPC, Spawn, "The Bog. The Peat Bog. Please, I must go.")
end

function dlg_33_3(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/quests/ralkesh_orto/ralkesh_orto009.mp3", "", "", 2346643811, 231883534, Spawn)
   AddConversationOption(conversation, "I do, Laharn will tell you the same.")
   AddConversationOption(conversation, "I do, as should you.")
   AddConversationOption(conversation, "I do not know, but I feel it to be true.")
   AddConversationOption(conversation, "No... do you?")
   AddConversationOption(conversation, "Not at all. Your actions carry far more weight than you realize.")
   StartConversation(conversation, NPC, Spawn, "Do you believe that?")
end

function StartRitual(NPC, Spawn)
	SetTempVariable(NPC, "Ready", "false")
	MoveToLocation(NPC, 578.33, -27.02, 391.10, 2, "", true)
	MoveToLocation(NPC, 579.60, -26.84, 381.32, 2, "Begin")
end

function Begin(NPC)
	AddTimer(NPC, 500, "Ritual1")
end

function Ritual1(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_mourn_6b24b157.mp3", "Oh, Ja'neth. Why!", "cry", 1219541946, 2965391465)
	AddTimer(NPC, 2000, "Ritual2")
end

function Ritual2(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_onemoment_89f15716.mp3", "One moment please, this is important.", "", 4271869261, 3070926903)
	AddTimer(NPC, 4000, "Ritual3")
end

function Ritual3(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_ceremony_26c02873.mp3", "Blessed Ja'neth, may your spirit remain forever peaceful. Loved Ja'neth, may your bindings remain forever loose. Lost Ja'neth, may you one day find me again.", "", 1234777522, 783285646)
	AddTimer(NPC, 10000, "Ritual4")
end

function Ritual4(NPC)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_overwith_e17083e9.mp3", "Oh, Ja'Neth... Ja'Neth.", "", 3271321560, 3056376656)
	AddTimer(NPC, 2000, "AllowQuestProgress")
end

function AllowQuestProgress(NPC)
	SetTempVariable(NPC, "AllowQuestProgress", "true")
	AddTimer(NPC, 60000, "Return")
end

function Return(NPC)
	SetTempVariable(NPC, "AllowQuestProgress", nil)
	MoveToLocation(NPC, 578.33, -27.02, 391.10, 2, "", true)
	MoveToLocation(NPC, 581.50, -26.27, 399.26, 2, "Reset")
end

function Reset(NPC)
	SpawnSet(NPC, "heading", "0")
	SetTempVariable(NPC, "Ready", "true")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_mourn_6b24b157.mp3", "Oh, Ja'neth. Why!", "cry", 1219541946, 2965391465, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_onemoment_89f15716.mp3", "One moment please, this is important.", "", 4271869261, 3070926903, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_ceremony_26c02873.mp3", "Blessed Ja'neth, may your spirit remain forever peaceful. Loved Ja'neth, may your bindings remain forever loose. Lost Ja'neth, may you one day find me again.", "", 1234777522, 783285646, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ralkesh_orto/qey_village01/qst_ralkesh_orto_overwith_e17083e9.mp3", "Oh, Ja'Neth... Ja'Neth.", "", 3271321560, 3056376656, Spawn)
--]]

