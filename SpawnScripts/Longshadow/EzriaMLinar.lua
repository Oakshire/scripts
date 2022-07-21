--[[
	Script Name		: SpawnScripts/LongshadowAlley/EzriaMLinar.lua
	Script Purpose	: Ezria M'Linar
	Script Author	: torsten
	Script Date		: 2022.07.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    Dialog1(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah.  How lovely.  Perhaps you are a fellow sophisticate with a palate for the finer things?  I am a vintner, you see.  Ezria M'Linar is my name.  My wines capture the essence of a long lost Neriak.")
	Dialog.AddVoiceover("voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar.mp3", 1300269011, 2618097834)
	Dialog.AddOption("I'm still deciding. I'll let you know if I want anything.")
	Dialog.AddOption("What is Neriak?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh my.  Please.  Are you youngsters so ignorant of history?  Neriak is the ancient homeland of the Teir'Dal, lost for centuries beneath the forest lands to the north.")
	Dialog.AddVoiceover("voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar003.mp3", 1051883363, 861878972)
	Dialog.AddOption("Who are the Teir'Dal?", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I weep for the future.  Teir'Dal, my poor uninformed friend, is the proper elvish name for the dark elf race.  Now please.  Leave me be.")
	Dialog.AddVoiceover("voiceover/english/merchant_ezria_milnar/fprt_hood05/std_de_female_ezria_mlinar004.mp3", 2552789619, 2468887624)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

