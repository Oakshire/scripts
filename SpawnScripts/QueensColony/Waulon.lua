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
    math.randomseed(os.time())

    voice = math.random(1,2)
    emote = math.random(1,3)    
        
    if voice == 1 then
        PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_004.mp3", "Where's me hat? Needs me lucky hat!", "", 2688932325, 103225044, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/waulon/boat_06p_tutorial02/walon_0_008.mp3", "What? Can't you see? Busy, away with ye!", "", 1608066875, 70639594, Spawn)
    end

    if emote == 1 then
        PlayAnimation(NPC, 11682)
    elseif emote == 2 then
        PlayAnimation(NPC, 11882)
    else
        PlayAnimation(NPC, 12285)
    end

end