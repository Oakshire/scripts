--[[
    Script Name    : SpawnScripts/Cache/abanditcook.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")  
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=0 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,2500,"Checking",1,Spawn)
    AddTimer(NPC,6000,"Checking",1,Spawn)
    AddTimer(NPC,8000,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,9000,"ResetGuardEmote",1,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "", "What was that?", "peer", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
    SendMessage(Spawn,"The cook heard something.")
    elseif choice ==3 then
    PlayFlavor(NPC, "", "Hmm?", "stare", 0, 0, Spawn, 0)
    end
end
end

function LeaveRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="false" then
	SetTempVariable(NPC, "OnGuard", "true")
	end
end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,4)
    if choice ==1 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3", "Summon help!  We have invaders!", "", 1598905349, 2204481929, Spawn, 0)
    elseif choice ==2 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_halfhealth_gf_8529e507.mp3", "I can't hold them forever!", "", 3371581229, 792393228, Spawn, 0)
    elseif choice ==3 then
		PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 3593389433, 3838830228, Spawn, 0)
    elseif choice ==4 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_aggro_gf_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 1014195867, 4030043484, Spawn, 0)
    end
end

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=8 and HasMoved(Spawn) then
    Attack(NPC,Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end