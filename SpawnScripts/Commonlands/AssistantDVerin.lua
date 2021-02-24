--[[
    Script Name    : SpawnScripts/Commonlands/AssistantDVerin.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.23 06:02:08
    Script Purpose : 
                   : 
--]]

local ZarvonnsLegacy = 446

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, ZarvonnsLegacy) == 1 or GetQuestStep(Spawn, ZarvonnsLegacy) == 2 or GetQuestStep(Spawn, ZarvonnsLegacy) > 4 or HasCompletedQuest(Spawn, ZarvonnsLegacy) then
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_000.mp3", "", "", 488507344, 934868479, Spawn )
    AddConversationOption(conversation, "Good luck with that!")
    if GetQuestStep(Spawn, ZarvonnsLegacy) == 2 then
	AddConversationOption(conversation, "I have some information the nomads said you'd like to hear.", "Option1")
	end
	StartConversation(conversation, NPC, Spawn, "How did you make it past the servants?!  Please don't tell me that I'll have to raise them all again.")
	elseif GetQuestStep(Spawn, ZarvonnsLegacy) == 4 then
	Option7(NPC, Spawn)
end
   end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_001.mp3", "", "", 1673377021, 1518954597, Spawn)
	AddConversationOption(conversation, "I want answers first.  Do you know where Zarvonn's tower is?", "Option2")
	StartConversation(conversation, NPC, Spawn, "They spoke with you?! They refuse to answer a single question I put to them!  Hah!  Well, out with it! What did they tell you?  Head to the south and head to the west, and you will find the finger pointing to where the tower exists.  Or perhaps, where it doesn't...")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_002.mp3", "", "", 1413552200, 1819248587, Spawn)
	AddConversationOption(conversation, "Exactly.  Do you know where he is?", "Option3")
	StartConversation(conversation, NPC, Spawn, "Hahaha! Fool! You're standing in it! This is Zarvonn's tower!  But I think you really want to know about Zarvonn himself. Am I right?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "She said that the evidence of Zarvonn's realm is found in the siege of time.", "Option4")
	StartConversation(conversation, NPC, Spawn, "If I did, I wouldn't be the servant to that witch upstairs. She's convinced that Zarvonn is still around here somewhere. I assist her in return for the necromantic magic she sparingly doles out to me. Now, tell me, did the nomads tell you where to find him?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Do you think he's there?", "Option5")
	StartConversation(conversation, NPC, Spawn, "What? I have no idea what that means! Wait ... Siege. There are orcish skeletons around the old siege ruins. My mistress claims that she didn't raise them. It must be Zarvonn! That hag was saying that Zarvonn raised them! ")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_005.mp3", "", "", 3657921638, 3443274293, Spawn)
	AddConversationOption(conversation, "I'm intrigued by this.  I'll bring some of them back.", "Option6")
	StartConversation(conversation, NPC, Spawn, "Who knows? Let's find out. If you go to the ruins, and bring back some bones from the odder-looking skeletons, I can find out if there's any trace of Zarvonn's magic left within them. If you do this, I'll tell the Mistress you wish to speak with her. She may tell you more about Zarvonn, though she'll probably do it a little bit at a time, over many months, while you run around doing chores for her.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, ZarvonnsLegacy, 2)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_006.mp3", "", "", 3616417494, 1126548906, Spawn)
	AddConversationOption(conversation, "I'll bring them back to you when I have them.")
	StartConversation(conversation, NPC, Spawn, "Travel to the east until you reach the ruins of the orcs most successful attempt at besieging Freeport. I'll need skulls from the more powerful undead you'll find there, and make sure the skulls aren't damaged.")
end


function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_007.mp3", "", "", 2402412467, 1844812193, Spawn)
	AddConversationOption(conversation, "So, are you going to announce me to your mistress or not?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Let me see them... Yes, so strong. I can feel the necromantic energy running through them.  I can gather Zarvonn's energies into a spell -- one that the Mistress will know nothing about. Hahahaha. Yes, this will do well.")
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SetStepComplete(Spawn, ZarvonnsLegacy, 4)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/assistant_d_verin/commonlands/qst_assistantdverin_008.mp3", "", "", 1641817282,  3511713899, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "Yes, yes, go on. She's expecting you upstairs.  I suggest you be polite, though it doesn't matter much to me what happens one way or the other.")
end





function respawn(NPC)

end

