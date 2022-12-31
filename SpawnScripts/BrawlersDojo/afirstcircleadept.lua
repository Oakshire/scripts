--[[
    Script Name    : SpawnScripts/BrawlersDojo/afirstcircleadept.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 12:12:52
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
    SetTempVariable(NPC,"Talking","false")
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn,5790) and GetQuestStep(Spawn,5790)>=1 and GetQuestStep(Spawn,5790)<=4 and not QuestStepIsComplete(Spawn,5790,3) then
    SpawnSet(NPC,"mood_state",0)
    SpawnSet(NPC,"visual_state",0)
    PlayAnimation(NPC,10871)
    SetTempVariable(NPC,"Talking","true")
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Glad you made it! Was the island as difficult as I remember?")
	Dialog.AddVoiceover("voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_5ec5f221.mp3",3870261841, 3828605353)
    PlayFlavor(NPC, "", "", "",0,0 , Spawn, 0)
	Dialog.AddOption("The Isle of Refuge? I made it here, didn't I? Let's spar.","Dialog1")
	Dialog.Start()
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn, 0)
    AddTimer(NPC,3000,"attack",1,Spawn)
end

function attack(NPC,Spawn)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"show_level",1)
    Attack(NPC,Spawn)
end

function aggro(NPC,Spawn)
end

function healthchanged(NPC, Spawn)  
    if GetHP(NPC) < GetMaxHP(NPC) * 0.26  then
    SpawnSet(NPC,"attackable",0)
    SpawnSet(NPC,"show_level",0)    
--   if IsInCombat(NPC,Spawn) then
        ClearHate(NPC, Spawn)
        SetInCombat(Spawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
        SetTarget(Spawn,nil)
--    end
    AddTimer(NPC,1500,"end2",1,Spawn)
    AddTimer(NPC,3000,"bow",1,Spawn)
    AddTimer(NPC,5000,"bow2",1,Spawn)
end
end

function end2(NPC,Spawn)
        ClearHate(NPC, Spawn)
        SetInCombat(Spawn, false)
        SetInCombat(NPC, false)
        ClearEncounter(NPC)
        SetTarget(Spawn,nil)
end   

function bow(NPC,Spawn)
    SetStepComplete(Spawn,5790,3)
	PlayFlavor(NPC, "", "","bow",0, 0)
end

function bow2(NPC,Spawn)
    Runback(NPC)
    SetTempVariable(NPC,"Talking","false")
    SpawnSet(NPC,"visual_state",11420)
end 

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
 if GetTempVariable(NPC,"Talking")== "false"then
   SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,10)

        if choice == 1 then
            PlayAnimation(NPC, 1966)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1967)
            AddTimer(NPC, 1700, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 1968)
            AddTimer(NPC, 2400, "Idle")
        elseif choice == 4 then
             PlayAnimation(NPC, 1969)
            AddTimer(NPC, 3200, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 2953)
            AddTimer(NPC, 3700, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 10868)
            AddTimer(NPC, 1500, "Idle")
        else
            PlayAnimation(NPC, 10889)
            AddTimer(NPC, 3500, "Idle")
        end
else
    local timer = MakeRandomInt(1500,2500)
    AddTimer(NPC, timer, "EmoteLoop")    
end
end

function Idle(NPC)
if GetTempVariable(NPC,"Talking")== "false"then
    PlayAnimation(NPC, 101) 
    SpawnSet(NPC, "action_state", 101)
end
    local timer = MakeRandomInt(1500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end

function death(NPC,Spawn)
    Despawn(NPC)
end
