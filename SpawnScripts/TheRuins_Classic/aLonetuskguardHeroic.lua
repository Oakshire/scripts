--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskguardHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.01 08:07:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
    AddTimer(NPC, math.random(6000,10000), "Animation")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Animation(NPC)
    local x = math.random(1,3)
        if not IsInCombat(NPC) then
    if x == 1 then
    PlayAnimation(NPC,891) elseif
        x == 2 or x == 3 then
            PlayAnimation(NPC,11663)
    end
    AddTimer(NPC, math.random(10000,20000), "Animation")
    end
end