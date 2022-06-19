--[[
    Script Name    : SpawnScripts/ThunderingSteppes/ClintGilcrush.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 04:06:19
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog6(NPC, Spawn)
RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1004.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	end
end


function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC,"","","ponder",0,0,Spawn)	
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Tell me, why do you submit to the will of a government that cares nothing for you?")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/clint_gilcrush/betrayal/exile/clint_gilcrush000.mp3", 2116689418, 4101197493)
	if GetFactionAmount(Spawn,11)>=5000 then
	Dialog.AddOption("Queen Antonia is benevolent and merciful. She rules us well.", "Dialog2")
    end	
	if GetFactionAmount(Spawn,12)>=5000 then
	Dialog.AddOption("The Overlord keeps Freeport strong. Without him the city would crumble.", "Dialog2")
    end
    Dialog.AddOption("I submit to no one.", "Dialog4")
	Dialog.AddOption("I don't have time for this.")
	Dialog.Start()
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)	
	Dialog.AddDialog("The Overlord, Queen Antonia... What makes you think they know what's best for you? I think you should decide for yourself what is best for you. Look at me... I'm successful, needed, wanted, feared... You know who got me here? I did. Govern yourself, be your own figurehead and leave Lucan and Antonia to play alone in their sandboxes.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/clint_gilcrush/betrayal/exile/clint_gilcrush001.mp3", 892107030, 1426347243)
	Dialog.AddOption("That makes a lot of sense. I'll think on what you have said.")
	Dialog.AddOption("That is a dangerous point of view, friend. I'll leave you now.")
	Dialog.AddOption("You're crazy... I'm out of here.")
	Dialog.Start()
end



function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC,"","","agree",0,0,Spawn)	
	Dialog.AddDialog("Finally, I have found someone else who doesn't bow to the will of insignificant figureheads. Keep your eyes peeled, friend. One day we will all rise up and take what is rightfully ours, our freedom.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/clint_gilcrush/betrayal/exile/clint_gilcrush002.mp3", 1962049135, 3399946954)
	Dialog.AddOption("I long for that day. It was good to meet you.")
	Dialog.AddOption("You are a fool, a rebellion will never happen. Goodbye.")
	Dialog.AddOption("Right... Well, I better go.")
	Dialog.Start()
end



