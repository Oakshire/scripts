--[[
    Script Name    : SpawnScripts/BrawlersDojo/asecondcircleinitiate.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.18 04:12:46
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
    SetTempVariable(NPC,"Talking","false")
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn,5790) and GetQuestStep(Spawn,5790)>=1 and GetQuestStep(Spawn,5790)<=4 and not QuestStepIsComplete(Spawn,5790,2) then
    SetTempVariable(NPC,"Talking","true")
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ale may be the life's blood, but fighting is the soul my existence!")
	Dialog.AddVoiceover("voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_bd8ccf81.mp3",4220338619, 1417901850)
    PlayFlavor(NPC, "", "", "nod",0,0 , Spawn, 0)
	Dialog.AddOption("I wish to spar with you.","Dialog1")
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
	PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_ab9057d3.mp3", "Look'n for me?", "",438949611, 3910736957, Spawn, 0)
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
	PlayFlavor(NPC, "", "", "bow", 0, 0, Spawn, 0)
    SetStepComplete(Spawn,5790,2)
end    

function bow2(NPC,Spawn)
    Runback(NPC)
    SetTempVariable(NPC,"Talking","false")
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
    FaceTarget(NPC,dummy)
end 

function respawn(NPC)
	spawn(NPC)
end


function EmoteLoop(NPC)
if GetTempVariable(NPC,"Talking")== "false"then
  SpawnSet(NPC, "action_state", 0)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
    PlayAnimation(NPC,(MakeRandomInt(1243,1245)))
    SpawnSet(dummy, "visual_state", 2083)
end
    AddTimer(NPC, 2550, "Idle")
    end
    
 function Idle(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
 if GetTempVariable(NPC,"Talking")== "false"then
    SpawnSet(NPC, "action_state", 267)
    PlayAnimation(NPC, 267) 
end
    AddTimer(NPC,1000,"resetdummy",1)
    local timer = MakeRandomInt(1500,3500)
    AddTimer(NPC, timer, "EmoteLoop")

end

function resetdummy(NPC)
    local zone = GetZone(NPC)
    local dummy = GetSpawnByLocationID(zone,133781317)
    SpawnSet(dummy, "visual_state", 0)
end   
           
function death(NPC,Spawn)
    Despawn(NPC)
end
        