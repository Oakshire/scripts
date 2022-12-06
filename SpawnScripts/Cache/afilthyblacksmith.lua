--[[
    Script Name    : SpawnScripts/Cache/afilthyblacksmith.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")  
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=2 then
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
    SendMessage(Spawn,"The smith heard something.")
    elseif choice ==3 then
    PlayFlavor(NPC, "", "Did you hear that?", "stare", 0, 0, Spawn, 0)
    end
end
end

function LeaveRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="false" then
	SetTempVariable(NPC, "OnGuard", "true")
	end
end

function Checking(NPC,Spawn)
    if GetDistance(NPC,Spawn) <=8 and HasMoved(Spawn)and GetY(Spawn) <=2 then
    Attack(NPC,Spawn)
    end
end
function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/optional5/halfelf_base_2/ft/halfelf/halfelf_base_2_1_halfhealth_gm_5ed9a68.mp3", "I won't give up that easily.", "", 3605027223, 2986829956, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gm_13a3055.mp3", "Summon help, intruders have arrived!", "", 262436067, 4127133618, Spawn, 0)
    elseif choice ==3 then
	PlayFlavor(NPC, "voiceover/english/halfelf_base_1/ft/halfelf/halfelf_base_1_1_death_gm_610c650e.mp3", "You must flee!  I'll try to hold them.", "", 3580386891, 3023137994, Spawn, 0)
    end
end