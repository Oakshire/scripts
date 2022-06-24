--[[
	Script Name	: SpawnScripts/Nettleville/NiaJaja.lua
	Script Purpose	: Nia Jaja 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if math.random(1,100)<=60 then
    if not HasLanguage(Spawn,13)then
	FaceTarget(NPC, Spawn)
    Garbled(NPC,Spawn)
end
end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	-- Must have Kerran language to hear this.
    if not HasLanguage(Spawn,13)then
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/nia_jaja/qey_village01/qey_village01_nia_jaja_multhail1_ab7bd6d4.mp3", "I simply can't face her! Can't you see I'm angry; I've no time to chat with you!", "", 1436884292, 4259898399, Spawn)
    end
end