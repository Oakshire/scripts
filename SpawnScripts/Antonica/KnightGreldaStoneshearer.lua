--[[
    Script Name    : SpawnScripts/Antonica/KnightGreldaStoneshearer.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 01:05:28
    Script Purpose : 
                   : 
--]]
local LordGrimrotsScythe = 5522

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/knight_grelda_stoneshearer/antonica/quests/firemyst/grelda_stoneshearer000.mp3", "", "threaten", 2872853431, 2142483830, Spawn)
	if GetQuestStep(Spawn, LordGrimrotsScythe) == 2 then
	AddConversationOption(conversation, "Uh...Ignar Steadirt sent me.", "Option1")
	end
	AddConversationOption(conversation, "Back off and I'll go easy on you.")
	StartConversation(conversation, NPC, Spawn, "Stop right where you are, or I'll slit your throat, stranger!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/knight_grelda_stoneshearer/antonica/quests/firemyst/grelda_stoneshearer001.mp3", "", "", 1637699836, 8526247, Spawn)
	AddConversationOption(conversation, "Sorry to bother, but he's asking for his reports.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Oh.  If Ignar sent you, then I can't kill you.  Pity.  Well, what did that old goat send you all the way out here for, eh?  He's not going to try swappin' assignments with me again, is he?  He's a good dwarf, good strategist ... shame about his hearing, though.  So, what is it?  Speak up!")
end


function Option2(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 2)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/knight_grelda_stoneshearer/antonica/quests/firemyst/grelda_stoneshearer002.mp3", "", "", 955376682, 564992177, Spawn)
	AddConversationOption(conversation, "I'll let Ignar know.")
	StartConversation(conversation, NPC, Spawn, "Did you know those Sabertooth gnolls dug up a relic of ancient power?  Well, that's what they say anyhow.  I don't believe a word of it.  They're trying to scare off their competition by claiming it's a relic of Lord Grimrot himself!  Can you imagine?  What little fools they are, eh?  That's all I have to report.")
end

function respawn(NPC)
	spawn(NPC)
end