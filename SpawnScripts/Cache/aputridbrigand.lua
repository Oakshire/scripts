--[[
    Script Name    : SpawnScripts/Cache/aputridbrigand.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")  
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=2 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,2500,"Checking",1,Spawn)
    AddTimer(NPC,5000,"Checking",1,Spawn)
    AddTimer(NPC,8000,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,9000,"ResetGuardEmote",1,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "", "What was that?", "peer", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
    SendMessage(Spawn,"The brigand heard something.")
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

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=8 and HasMoved(Spawn) and GetY(Spawn) <=2 then
    Attack(NPC,Spawn)
    end
end
function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "", 3340212225, 279643307, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432, Spawn, 0)
    elseif choice ==3 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443, Spawn, 0)
    end
end

function waypoints(NPC)
if GetSpawnLocationID(NPC)== 133781197 then
	MovementLoopAddLocation(NPC, 14.67, -0.24, 11.21, 2, 4)
	MovementLoopAddLocation(NPC, 8.17, -0.25, 6.32, 2, 0)
	MovementLoopAddLocation(NPC, 1.14, -0.24, 0.73, 2, 0)
	MovementLoopAddLocation(NPC, -1.36, -0.24, -1.61, 2, 4)
	MovementLoopAddLocation(NPC, 4.94, -0.25, 3.33, 2, 0)
	MovementLoopAddLocation(NPC, 14.08, -0.24, 1.97, 2, 4)
	MovementLoopAddLocation(NPC, 16.66, -0.24, 4.09, 2, 0)
	MovementLoopAddLocation(NPC, 18.32, -0.24, 5.45, 2, 2)
	MovementLoopAddLocation(NPC, 13.93, -0.25, 1.65, 2, 0)
	MovementLoopAddLocation(NPC, 9.06, -0.25, 3.94, 2, 0)
	MovementLoopAddLocation(NPC, 8.13, -0.25, 7.29, 2, 0)
end
end