--[[
    Script Name    : SpawnScripts/Cache/afetteredguard.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 04:12:18
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
--	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
	SetTempVariable(NPC, "OnGuard", "true")  
    SetSeeHide(NPC,1)
end

function InRange(NPC,Spawn)
    if GetTempVariable(NPC,"OnGuard")=="true" and not IsInCombat(NPC) and GetY(Spawn) <=2 then
    FaceTarget(NPC,Spawn)
	SetTempVariable(NPC, "OnGuard", "false")    
    AddTimer(NPC,1000,"Checking",1,Spawn)
    AddTimer(NPC,4000,"Checking",1,Spawn)
    AddTimer(NPC,7500,"Checking",1,Spawn)
    AddTimer(NPC,10000,"ResetGuard",1,Spawn)
    AddTimer(NPC,9000,"ResetGuardEmote",1,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "", "What was that?", "peer", 0, 0, Spawn, 0)
    elseif choice ==2 then
    PlayFlavor(NPC, "", "", "doubletake", 0, 0, Spawn, 0)
    SendMessage(Spawn,"The guard heard something.")
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
	PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_aggro_gf_f28ca26e.mp3", "Brace yourselves! We have trouble!", "", 773678310, 2089682843, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_12fbaefb.mp3", "Destroy the invader!", "", 1313233821, 723410897, Spawn, 0)
    elseif choice ==3 then
	PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_1/ft/halfelf/halfelf_base_1_1_aggro_gf_a68f64b6.mp3", "Alarm! Alarm!", "", 1220383018, 2962002142, Spawn, 0)
    end
end