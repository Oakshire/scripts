--[[
	Script Name		: SpawnScripts/CastleviewHamlet/FrupGroaak.lua
	Script Purpose	: Frup Groaak
	Script Author	: Dorbin
	Script Date		: 2022.04.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn, 0)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Frooooaaaak! Have you seen any of my brothers?")
	Dialog.AddOption("I'm not sure I've seen them.", "Dialog4")
	Dialog.Start()
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1030.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1030.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1016.mp3", 0, 0, Spawn)
	end
end

		
--		PlayFlavor(NPC, "", "Have you found Giidib yet? No? Perhaps you could be so kind as to do so?", "converse_male06", 0, 0, Spawn, 0)
		
function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The other I came to these shores with, Giidib, set out from the beach in the opposite direction as I.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak005.mp3", 181752566, 1360531724)
	Dialog.AddOption("Which beach?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I apologize, I do not know the names of places here. T'was quite a ways south east of here, however. There was a great forest situated on the banks above.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak006.mp3", 505426332, 1748439626)
	Dialog.AddOption("I'm sure I can find that.", "Dialog7")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("In the depths of the Feerrott. I cannot explain more now - trust is something which must be won, and our home cannot be revealed to those who might wish us harm.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak003.mp3", 1246154501, 3903140616)
	Dialog.AddOption("I've no wish to harm you.", "Dialog6")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Any of them at all? We were wandering through the vast green lands beyond these walls, when we were set upon by brigands!")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak001.mp3", 558808242, 1161412140)
	Dialog.AddOption("Wait a minute, I don't think I've seen you around here before.", "Dialog5")
	Dialog.AddOption("Unfortunately my business elsewhere has priority.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed, I should think not. I was very surprised to see other of our kind around here. I and my brothers managed to make our way here from far to the south.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak002.mp3", 3267415746, 289228218)
	Dialog.AddOption("Far to the south?", "Dialog3")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Then perhaps you'll wish to help.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak004.mp3", 3094447323, 1179906497)
	Dialog.AddOption("I'd agree to that.", "Dialog1")
	Dialog.AddOption("I've no interest, sorry.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would like to see Giidib join me here in Qeynos while I plead our case to your illustrious Queen.")
	Dialog.AddVoiceover("frup_groaak/qey_village04/frup_groaak007.mp3", 4120156088, 1995605027)
	Dialog.AddOption("I will set about finding him. [NEEDS QUEST]")
	Dialog.Start()
end
