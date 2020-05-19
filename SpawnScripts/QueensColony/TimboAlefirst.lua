--[[
    Script Name    : SpawnScripts/QueensColony/TimboAlefirst.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Timbo Alefirst dialog
    Modified Date  : 2020.04.09
    Modified  by   : premierio015
    Modified Notes : Addded animations, dialogues
--]]
function spawn(NPC)
    hailed(NPC, Spawn)
	EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	choice = math.random (1,3)
	str = tostring(choice)
    if choice == 1 then
	PlayFlavor(NPC, "", "Wow, Meri is a great dancer!", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "We need a band!", "", 0, 0, Spawn)
	else 
	PlayFlavor(NPC, "", "I hope im not embarrassing myself.", "", 0, 0, Spawn)
	end
end

function EmoteLoop(NPC)
    math.randomseed(os.time())
    local choice = math.random(1,4)
	str = tostring(choice)
	if choice == 1 then
	PlayAnimation(NPC, 11557)
	FaceTarget(NPC, 2530055)
	AddTimer(NPC, 8000, "EmoteLoop")
	elseif choice == 2 then
	PlayAnimation(NPC, 11909)
	FaceTarget(NPC, 2530055)
	AddTimer(NPC, 8000, "EmoteLoop")
	elseif choice == 4 then
	PlayAnimation(NPC, 298)
	FaceTarget(NPC, 2530055)
	AddTimer(NPC, 8000, "EmoteLoop")
	else
	PlayAnimation(NPC, 11681)
	FaceTarget(NPC, 2530055)
	AddTimer(NPC, 8000, "EmoteLoop")
end
end