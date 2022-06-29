--[[
    Script Name    : SpawnScripts/Starcrest/PhilosopherOrrinalanya.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.28 04:06:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
 FaceTarget(NPC,Spawn) 
    if not HasLanguage(Spawn,4)then
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
    else
    RandomGreeting(NPC, Spawn)
    end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_multhail4_68bb913c.mp3", "I suppose I should meet him for that debate... it does seem like an interesting topic...", "", 415488076, 395918302, Spawn, 4)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_callout_f7da3eeb.mp3", "Hmm ... you don't seem the philosophizing type ... good day and farewell.", "", 3739495894, 1743566335, Spawn, 4)
	end
end

function FaceFount1(NPC)
	SpawnSet(NPC, "heading", "6")
end	
function FaceFount2(NPC)
	SpawnSet(NPC, "heading", "139")
end	
function FaceFount3(NPC)
	SpawnSet(NPC, "heading", "318")
end	
function FaceFount4(NPC)
	SpawnSet(NPC, "heading", "281")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 1,"FaceFount1")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 0)
	MovementLoopAddLocation(NPC, 776, -20.52, 287.26, 2, 0)
	MovementLoopAddLocation(NPC, 778.56, -20.57, 281.87, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 1,"FaceFount2")
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 55,"Action")
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 781.3, -20.51, 275.65, 2, 0)
	MovementLoopAddLocation(NPC, 777.91, -20.6, 283.44, 2, 0)
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 1,"FaceFount1")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 0)
	MovementLoopAddLocation(NPC, 765.24, -20.48, 286.85, 2, 0)
	MovementLoopAddLocation(NPC, 765.24, -20.48, 286.85, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 1,"FaceFount3")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 1,"FaceFount4")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 765.25, -20.49, 285.44, 2, 0)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tap", 0, 0, Spawn)
    end
end   



