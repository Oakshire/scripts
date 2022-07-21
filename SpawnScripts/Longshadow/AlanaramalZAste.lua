--[[
	Script Name		: SpawnScripts/LongshadowAlley/AlanaramalZAste.lua
	Script Purpose	: Alanaramal Z'Aste
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
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "You have learned everything I have to teach.  You are free to use our crafting facilities to hone your skills and master your craft.", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", "", 0, 0, Spawn, 0)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
	Dialog.AddOption("I will start on that now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
	Dialog.AddOption("Yes, please teach me.", "Dialog1")
	Dialog.AddOption("No, not at the moment.")
	Dialog.Start()
end

