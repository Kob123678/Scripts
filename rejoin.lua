local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local currentPlaceId = game.PlaceId
local jobId = game.JobId

TeleportService:TeleportToPlaceInstance(currentPlaceId, jobId, player)
