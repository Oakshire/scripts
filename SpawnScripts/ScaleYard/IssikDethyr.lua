--[[
	Script Name		: SpawnScripts/ScaleYard/IssikDethyr.lua
	Script Purpose	: Issik Dethyr
	Script Author	: torsten
	Script Date		: 2022.08.01
	Script Notes	: 
--]]

local BattleOnTheHomeFront = 348

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetQuestStep(Spawn, BattleOnTheHomeFront) == 1 then
        SetStepComplete(Spawn, BattleOnTheHomeFront, 1)
        Dialog2(NPC, Spawn)
    else
	    RandomGreeting(NPC, Spawn)
	end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/quest_issik_away_civilian_b62b6605.mp3", "Away, civilian! The Militia has no time for lorungs like you!", "", 2421734461, 4002400859, Spawn, 0)
	elseif choice == 2 then
		PlayVoice(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", 0, 0, Spawn)
	end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, good for him. Too bad I've already sent out another raiding party and won't need his services for some time... possibly a long time. Hmm. You may have noticed I stopped speaking to you... That's your cue to move along. Go ahead, you can do it. One foot in front of the other.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/issik002.mp3", 2023483562, 2147836902)
	Dialog.AddOption("Fine, goodbye.")
	Dialog.AddOption("Your insolence shall not be forgotten. We shall meet again.")
	Dialog.AddOption("Malachi will not be happy about this!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Speak or be killed. Quickly now, make your decision.")
	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/issik001.mp3", 1583287184, 404701556)
	Dialog.AddOption("Malachi has organized his raiding party and awaits final orders to attack our enemies in the Commonlands.", "Dialog1")
	Dialog.Start()
end

