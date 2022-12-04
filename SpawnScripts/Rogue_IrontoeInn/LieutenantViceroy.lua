--[[
    Script Name    : SpawnScripts/Rogue_IrontoeInn/LieutenantViceroy.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.03 05:12:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
waypoints(NPC)
	SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")    
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) >= 6 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,2500,"Checking",1,Spawn)
    AddTimer(NPC,6000,"Checking",1,Spawn)
    AddTimer(NPC,8500,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,10000,"ResetGuardEmote",1,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "", "What was that?", "peer", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
    SendMessage(Spawn,"The Lieutenant heard something.")
    elseif choice ==3 then
    PlayFlavor(NPC, "", "Hmm? I thought I heard something.", "stare", 0, 0, Spawn, 0)
    end
end
end

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=8 and HasMoved(Spawn) then
    Attack(NPC,Spawn)
    end
end

function LeaveRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="false" then
	SetTempVariable(NPC, "OnGuard", "true")
	end
end

function ResetGuardEmote(NPC,Spawn)
    if not IsInCombat(NPC) then
    choice = MakeRandomInt(1,2)
    if choice ==1 then
	PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "shrug", 0, 0, Spawn, 0)
    end
end 
end

function ResetGuard(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "true")    
end 

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 0.15, 6.23, 2, 2, 0)
	MovementLoopAddLocation(NPC, 1.82, 6.23, 0.64, 2, 6)
	MovementLoopAddLocation(NPC, 1.82, 6.23, 0.64, 2, 0)
	MovementLoopAddLocation(NPC, -2.23, 6.23, 4.58, 2, 0)
	MovementLoopAddLocation(NPC, -3.57, 6.23, 6.67, 2, 8,"Face")
	MovementLoopAddLocation(NPC, -3.76, 6.23, 6.45, 2, 0)
	MovementLoopAddLocation(NPC, -0.05, 6.23, 2.09, 2, 0)
end

function Face(NPC)
    SetHeading(NPC,50)
end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_notcitizen_gm_48350e59.mp3", "You're not allowed in here!", "", 1734668326, 429140096, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_notcitizen_gm_7a80a6a8.mp3", "I thought I smelled something foul.", "", 4043801631, 2162078490, Spawn, 0)
    else
	PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_kill_gm_2b7f45ad.mp3", "For the glory of Qeynos!", "", 1601992673, 279003315, Spawn)
    end
end