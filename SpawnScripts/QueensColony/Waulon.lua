--[[
    Script Name    : SpawnScripts/QueensColony/Waulon.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.27
    Script Purpose : Waulon dialog
    Modified Date  : 20.04.03
    Modified by    : premierio015
    Notes          : Added animations
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    choice = math.random(1,2)
    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "hello", 2688932325, 103225044, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't you see? Busy, away with ye!", "smile", 1608066875, 70639594, Spawn)
    end
end