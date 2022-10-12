--[[
	Script Name		: SpawnScripts/NorthQeynos/ElsabethiaHartsunder.lua
	Script Purpose	: Elsabethia Hartsunder
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC,5545)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)>0 then
Dialog2(NPC, Spawn)
PlayAnimation(NPC,539)
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn)
	Dialog.AddDialog("I'm not entirely certain.  I've only been able to identify the species that carry the infection.  The malady has eluded any real research because it dies with the host. What I need are some living hosts to study...")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder002.mp3", 2822933996, 1733168788)
    if not HasQuest(Spawn,5545) and not HasCompletedQuest(Spawn,5545) and GetLevel(Spawn) >= 10 then  
	Dialog.AddOption("Maybe I can help you.", "Dialog4")
    end
    
	Dialog.AddOption("Good luck with your research.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1021.mp3", "", "", 0, 0, Spawn)
	Dialog.AddDialog("Forgive me but I must return to my work.  Please speak with one of the other priests.  I'm certain they will be more than happy to assist you.")
--	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder000.mp3", 2808880606, 3373507880)
    if not HasQuest(Spawn,5545) and not HasCompletedQuest(Spawn,5545) and GetLevel(Spawn) >= 10 then  
	Dialog.AddOption("What is your work?", "Dialog3")
    end
    if  HasCompletedQuest(Spawn,5545)then
	Dialog.AddOption("How is your research going?", "DoneDialog")
    end
    if GetQuestStep(Spawn,5545)==4 then	
	Dialog.AddOption("I have the diseaed materials you requested.","QuestTurnIn")
	end
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("I'm overseeing the research of a new infection spreading among the vermin populace in the catacombs.  We've learned from the past years that prevention is the best cure for any ailment.")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder001.mp3", 3349903032, 985226807)
	Dialog.AddOption("What type of infection?", "Dialog1")
	Dialog.AddOption("I'll let you get back to your work.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddDialog("Your help would come as a blessing.  The tomb leeches, giant burrowers, and tomb vermin that  infest the Vermin's Snye catacomb are the species that carry the infection.  I need a live specimen from each of these host species to progress in my research.")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder003.mp3", 3285881813, 3232967682)
	Dialog.AddOption("I'll retrieve the live specimens for you.", "Dialog5")
	Dialog.AddOption("I don't think I can be of assistance.  Good luck.")
	Dialog.Start()
end


function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC,Spawn,5545)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Please be careful  transporting the diseased creatures. I would hate for you to become infected.")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder004.mp3", 1012652125, 593920710)
	Dialog.AddOption("I understand and thank you.")
	Dialog.Start()
end

function QuestTurnIn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,5545,4)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh ... You have a good soul, child. You performed a brave and merciful act down in the sewers. Remember, sometimes death is the only cure, no matter how much it hurts you. Though we couldn't save those poor diseased creatures, we can try to stop the illness from spreading by finding its source.")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder005.mp3", 1012652125, 593920710)
	Dialog.AddOption("Thank you.  I'm glad I could help.")
	Dialog.Start()
end

function DoneDialog(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The specimens you brought me have helped immensely. Hopefully, I'm on the cusp of a breakthrough and will be able to better help the infected here in the city.")
	Dialog.AddVoiceover("voiceover/english/optional5/elsabethia_hartsunder/qey_north/elsabethia_hartsunder006.mp3", 1012652125, 593920710)
	Dialog.AddOption("I'm glad to hear it. Good luck!")
	Dialog.Start()
end