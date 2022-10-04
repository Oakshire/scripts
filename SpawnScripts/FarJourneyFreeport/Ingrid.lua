--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Ingrid.lua
    Script Author  : Cynnar
    Script Date    : 2019.10.18 06:10:27
    Script Purpose : 
    Notes          : 
	Notes          : 
--]]
require "SpawnScripts/Generic/DialogModule"

local TaskAboardTheFarJourney = 524
local TempAnimationVar = nil
local ShardOfLuclin = 12565

function spawn(NPC)
    SetTempVariable(NPC, "TempAnimationVar", "FirstRun")
    SetTempVariable(NPC, "Staring", "Checking")
--  AddTimer(NPC, 30000, "WalkToGeredo")
    SetPlayerProximityFunction(NPC, 12, "InRange", "LeaveRange")

end

function hailed(NPC, Spawn)
    step = GetQuestStep(Spawn, 524)
    if not HasQuest(Spawn,524) and not HasCompletedQuest(Spawn, 524) then --Avoids stopping Ingred while she is moving around
    else    
    FaceTarget(NPC, Spawn)
    if step == 4 then
        SendStateCommand(NPC, 0)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Hello, how are you?")
        Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_001.mp3", 1960704460, 917558592)
        Dialog.AddOption("Good, thanks. How about you?", "small_talk")
        Dialog.Start()
    elseif step == 5 then
        PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_005.mp3",
            "Is Vim not going to sell it to you? That is just my luck... well I guess I will have to finish this work then.",
            "", 4181806501, 3186272404)
    elseif step == 6 then
        SetTutorialStep(Spawn, 31)
        AddCoin(Spawn, 10)
        DisplayText(Spawn, 34, "You receive 10 Copper.")
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog(
            "Ah! You got the shard. Great! Now I can stop doing this work and enjoy the rest of this trip. Here is some coin for your help.")
        Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_006.mp3", 502975024, 483052250)
        Dialog.AddOption("Thanks.", "thanks_for_getting_shard")
        Dialog.Start()
    elseif GetX(NPC) < 5 then
        FaceTarget(NPC, Spawn)

        local rand = math.random(0, 2)

        if rand == 0 then
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_009.mp3","I hate rats, every time we dock they get on board and eat our supplies.", "grumble", 3636322414,1973183674, Spawn)
        elseif rand == 1 then
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_008.mp3", "Don't you just love the sea?","sniff", 541733813, 1294072887, Spawn)
        else
            PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02_fvo_007.mp3", "Yo ho ho and a bottle of rum!","smile", 964088856, 3568852318, Spawn)
        end
    end
end
end

function InRange(NPC,Player)
if GetTempVariable(NPC,"Starting","Checking") then
    SetTempVariable(NPC, "Staring", "Done")
    AddTimer(NPC, 30000, "WalkToGeredo",1,Player)
    end
end

function WalkToGeredo(NPC, Player)
	playerhasquest = HasQuest(Player, 524)
	if playerhasquest == true then
	MoveToLocation(NPC, 2.35, -2.07, -3.34, 5, nil, false)
	else
    MoveToLocation(NPC, 5.85, -2.07, -2.94, 2, nil, true)
    MoveToLocation(NPC, 5.77, -2.07, -1.56, 2, nil, false)

    AddTimer(NPC, 1500, "EmoteAnimationStart")
    end

end

-- sends to Geredo to start the flirting
-- no action on Ingrid's part yet
function EmoteAnimationStart(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        AnimationChoice = math.random(0, 10)

        local Geredo = GetSpawn(NPC, 270004)

        if Geredo ~= nil then
            if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
                AddTimer(Geredo, 2000, "GeredoFlirtingWithIngird")
            else
                if GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice <= 5 then
                    AddTimer(Geredo, 5000, "GeredoFlirtingWithIngird")
                else
                    AddTimer(Geredo, 5000, "FlirtingWithGeredo")
                end
            end
        end
    end

end

-- sent from Geredo's flex
-- sends back to Geredo after Ingrid's response with a chuckle
function FlirtWithIngrid(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "chuckle", 0, 0)

        AnimationChoice = math.random(0, 9)

        local Geredo = GetSpawn(NPC, 270004)

        if Geredo ~= nil then
            if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
                AddTimer(Geredo, 5000, "FlirtingWithGeredo")
            else
                if GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice >= 7 then
                    AddTimer(Geredo, 5000, "FlirtingWithGeredo")
                else
                    EmoteAnimationStart(NPC, Spawn)
                end
            end
        end
    end

end

-- sent form Geredo's bow
-- sends back to Geredo after Ingrid's curtsey
function FlirtWithIngrid_2(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "curtsey", 0, 0)

        AnimationChoice = math.random(0, 9)

        local Geredo = GetSpawn(NPC, 270004)

        if Geredo ~= nil then
            if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
                AddTimer(Geredo, 5000, "FlirtingWithGeredo_2")
            elseif GetTempVariable(NPC, "TempAnimationVar") == "SecondRun" and AnimationChoice >= 7 then
                AddTimer(Geredo, 5000, "FlirtingWithGeredo_2")
            else
                EmoteAnimationStart(NPC, Spawn)
            end
        end
    end

end

-- sent form Geredo's flirt
-- sends to flustered animation next
function FlirtWithIngrid_3(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "giggle", 0, 0)
        AddTimer(NPC, 2500, "Ingridflustered")
    end

end

-- emotes flustered 
-- sends back to Geredo after Ingrid's giggle
function Ingridflustered(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "flustered", 0, 0)

        local Geredo = GetSpawn(NPC, 270004)

        if Geredo ~= nil then
            AddTimer(Geredo, 3000, "FlirtingWithGeredo_3")
        end
    end

end

-- sent form Geredo's blowkiss
-- sends back to Geredo after Ingrid's no
function FlirtWithIngrid_4(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "no", 0, 0)

        local Geredo = GetSpawn(NPC, 270004)

        if Geredo ~= nil then
            AddTimer(Geredo, 2000, "FlirtingWithGeredo_4")
        end
    end

end

-- sent form Geredo's beg
-- sends to foot tap animation
function FlirtWithIngrid_5(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0)

        AddTimer(NPC, 3000, "IngridTapFoot")
    end

end

-- emotes foot tap
-- sends back to Geredo after Ingrid's shrug
function IngridTapFoot(NPC, Spawn)

    if GetTempVariable(NPC, "TempAnimationVar") ~= nil then
        PlayFlavor(NPC, "", "", "shrug", 0, 0)

        if GetTempVariable(NPC, "TempAnimationVar") == "FirstRun" then
            SetTempVariable(NPC, "TempAnimationVar", "SecondRun")
        end

        AddTimer(NPC, 5000, "EmoteAnimationStart")
    end

end

-- Ingrid runs to Captain after camera shake
-- sends to FaceCaptainVarlos function after movement
function CaptainCallingIngrid(NPC, Spawn)

    PlayAnimation(NPC, 12246)

    if GetTempVariable(NPC, "TempAnimationVar") == nil then
        MoveToLocation(NPC, 2.47, -2.07, -3.26, 5)
    end

    SetTempVariable(NPC, "IngridSpawnPointer", Spawn)

    MoveToLocation(NPC, -2.72, -2.00, -8.34, 5, nil, true)
    MoveToLocation(NPC, -2.11, 1.21, -14.69, 5, nil, true)
    MoveToLocation(NPC, 0.78, 1.21, -14.51, 5, nil, true)
    MoveToLocation(NPC, 0.54, 1.18, -11.70, 5, nil, true)
    MoveToLocation(NPC, 1.68, 1.19, -12.13, 5, "FaceCaptainVarlos", false)

end

-- Ingird reaches Captain
-- sends back to Captain upon arrival
function FaceCaptainVarlos(NPC)

    local Spawn = GetTempVariable(NPC, "IngridSpawnPointer")
    SetTempVariable(NPC, "IngridSpawnPointer", nil)

    local Varlos = GetSpawn(NPC, 270000)

    FaceTarget(NPC, Varlos)

    if GetDistance(NPC, Varlos) >= 1.48 then
        AddTimer(Varlos, 500, "TalkToCaptainVarlos", 1, Spawn)
    end

end

-- Ingrid salutes Captain
-- sends to ReturnToSpawnPoint function
-- sends back to Captain
function SaluteCaptainVarlos(NPC, Spawn)

    local Varlos = GetSpawn(NPC, 270000)

    PlayFlavor(NPC, "voiceover/english/ingrid/boat_06p_tutorial02/020_deckhand_ingrid_010_1637e047.mp3",
        "Aye, aye, Captain!", "salute", 1250282628, 237171958, Spawn)

    AddTimer(Varlos, 3000, "IngridLeaveCaptain", 1, Spawn)
    AddTimer(NPC, 2000, "ReturnToSpawnPoint", 1, Spawn)

end

function ReturnToSpawnPoint(NPC, Spawn)

    MoveToLocation(NPC, 0.78, 1.21, -14.51, 5, nil, true)
    MoveToLocation(NPC, -2.11, 1.21, -14.69, 5, nil, true)
    MoveToLocation(NPC, -2.72, -2.00, -8.34, 5, nil, true)
    MoveToLocation(NPC, 3.34, -2.07, -3.97, 5, nil, true)
    MoveToLocation(NPC, 2.35, -2.07, -3.34, 5, nil, false)

end

function small_talk(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog(
        "I am fine, just... after the last pickup I have been working extra hard, since Vim said she would give me the piece of Luclin she found.")
    Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_002.mp3", 3891218598, 1657063801)
    Dialog.AddOption("Vim?", "vim_who")
    Dialog.Start()
end

function vim_who(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog(
        "Yes, yes, Vim. The merchant over there. She found a small piece of the moon and is having me work for it. Maybe you can go buy it from her for me?")
    Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_003.mp3", 3050752668, 1437910974)
    Dialog.AddOption("Sure, but I have no money.", "no_money")
    Dialog.Start()
    vim = GetRandomSpawnByID(NPC, 270007)
    FaceTarget(NPC, vim)
    PlayFlavor(NPC,"","","point",0,0,Player)
    AddTimer(NPC, 3000, "turn_towards_player", 1, Spawn)
end

function turn_towards_player(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function no_money(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Maybe you have something she will buy. Why don't you go talk to her.")
    Dialog.AddVoiceover("voiceover/english/ingrid/boat_06p_tutorial02/ingrid_0_004.mp3", 3978048706, 2537762235)
    Dialog.AddOption("Sure.", "finished_step_four")
    Dialog.Start()
end

function finished_step_four(NPC, Spawn)
    SetTutorialStep(Spawn, 22)
    SetStepComplete(Spawn, 524, 4)
end

function thanks_for_getting_shard(NPC, Spawn)
    SetStepComplete(Spawn, 524, 6)
    RemoveItem(Spawn, ShardOfLuclin)
end

function respawn(NPC)

end