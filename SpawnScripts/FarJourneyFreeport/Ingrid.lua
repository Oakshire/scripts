--[[
	Script Name     : SpawnScripts/FarJourneyFreeport/Ingrid.lua
	Script Author   : Cynnar
	Script Date     : 2019.10.18 06:10:27
	Script Notes    : 
	Script Purpose  : Provides Movement and Speech for Ingrid
--]]
require "SpawnScripts/Generic/DialogModule"

local ShardOfLucin = 12565

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, player)
    step = GetQuestStep(Spawn, 524)
    if step == 4 then
        SendStateCommand(NPC, 0)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Hello, how are you?")
        Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_001.mp3", 1960704460, 917558592)
        Dialog.AddOption("Good, thanks. How about you?", "small_talk")
        Dialog.Start()
    elseif step == 5 then
        PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_005.mp3", "Is Vim not going to sell it to you? That is just my luck... well I guess I will have to finish this work then.", "", 4181806501, 3186272404)
    elseif step == 6 then
        SetTutorialStep(Spawn, 31)
        AddCoin(Spawn, 10)
        DisplayText(Spawn, 34, "You receive 10 Copper.")
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Ah! You got the shard. Great! Now I can stop doing this work and enjoy the rest of this trip. Here is some coin for your help.")
        Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_006.mp3", 502975024, 483052250)
        Dialog.AddOption("Thanks.", "thanks_for_getting_shard")
        Dialog.Start()
    elseif RoundToHundredth(GetX(NPC)) == 2.48 then
        local rand = math.random(0, 2)
        if rand == 0 then
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_009.mp3", "I hate rats, every time we dock they get on board and eat our supplies.", "grumble", 3636322414, 1973183674, Spawn)
        elseif rand == 1 then
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_008.mp3", "Don't you just love the sea?", "sniff", 541733813, 1294072887, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_007.mp3", "Yo ho ho and a bottle of rum!", "smile", 964088856, 3568852318, Spawn)
        end
    end
end

function RoundToHundredth(num)
    return math.floor(((num * 100) + 0.5)) / 100
end

function thanks_for_getting_shard(NPC, player)
	SetStepComplete(player, 524, 6) 
	RemoveItem(player, ShardOfLucin)
end

function small_talk(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("I am fine, just... after the last pickup I have been working extra hard, since Vim said she would give me the piece of Luclin she found.")
	Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_002.mp3", 3891218598, 1657063801)
	Dialog.AddOption("Vim?", "vim_who")
	Dialog.Start()
end

function vim_who(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Yes, yes, Vim. The merchant over there. She found a small piece of the moon and is having me work for it. Maybe you can go buy it from her for me?")
	Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_003.mp3", 3050752668, 1437910974)
	Dialog.AddOption("Sure, but I have no money.", "no_money")
	Dialog.Start()
	vim = GetRandomSpawnByID(NPC, 270007)
	FaceTarget(NPC, vim)
	AddTimer(NPC, 3000, "turn_towards_player", 1, player)	
end

function turn_towards_player(NPC, player)
	FaceTarget(NPC, player)
end

function no_money(NPC, player)
	Dialog.New(NPC, player)
	Dialog.AddDialog("Maybe you have something she will buy. Why don't you go talk to her.")
	Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_004.mp3", 3978048706, 2537762235)
	Dialog.AddOption("Sure.", "finished_step_four")
	Dialog.Start()	
end

function finished_step_four(NPC, player)
	SetTutorialStep(player, 22)
	SetStepComplete(player, 524, 4) 
end

function respawn(NPC)

end
