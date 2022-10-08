--[[
    Script Name    : SpawnScripts/Antonica/YorutheOld.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.07 05:10:19
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
    Dialog5(NPC, Spawn)
 end

function respawn(NPC)
	spawn(NPC)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", 0, 0, Spawn)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", 0, 0, Spawn)
	elseif choice == 3 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", 0, 0, Spawn)
	elseif choice == 4 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Return here when you have enough to last me the winter.  I await your return. I have much to teach you.")
	Dialog.AddVoiceover("yoru_the_old/antonica/quests/yoru_the_old/yorutheold004.mp3", 629868488, 2564006750)
	Dialog.AddOption("I'll be back soon.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Did you bring the firewood I asked you to gather?")
	Dialog.AddVoiceover("yoru_the_old/antonica/quests/yoru_the_old/yorutheold005.mp3", 3195537863, 1349887913)
	Dialog.AddOption("No, I'm still collecting it.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, there you are.  I was beginning to wonder if you would ever come speak to me.  There are great things in store for you. I have many things to teach you and my time grows short.  But first, I need firewood for my hearth.  Will you be so kind as to gather me some?")
	Dialog.AddVoiceover("yoru_the_old/antonica/quests/yoru_the_old/yorutheold002.mp3", 1009748728, 1361657719)
	Dialog.AddOption("I'll get the firewood for you.", "Dialog1")
	Dialog.AddOption("Go get your own wood!", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I was wrong.  You are not ready yet. ")
	Dialog.AddVoiceover("yoru_the_old/antonica/quests/yoru_the_old/yorutheold003.mp3", 3376218357, 2854464536)
	Dialog.AddOption("That's your opinion.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
--	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Someday you will be ready, but not now... not now.  You have so much more to learn.")
--	Dialog.AddVoiceover("yoru_the_old/antonica/quests/yoru_the_old/yorutheold001.mp3", 1355376285, 441669902)
	Dialog.AddOption("I will speak with you another time.")
	Dialog.Start()
RandomGreeting(NPC, Spawn)
end

