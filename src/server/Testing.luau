local Get_All_The_Players = {}
local Remove_Prints = {}
local Kick_Player = {}




local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local MessageService = game:GetService("MessagingService")

function Get_All_The_Players:Working()
    local Folder = Instance.new("Folder")
    Folder.Name = "PlayerCharacters"
    Folder.Parent = workspace

    local function ParentCharacterToFolder(player)
        player.CharacterAdded:Connect(function(character)
            character.Parent = Folder
        end)
    end

    for _, player in ipairs(Players:GetPlayers()) do
        ParentCharacterToFolder(player)
    end

    Players.PlayerAdded:Connect(function(player)
        ParentCharacterToFolder(player)
    end)
end


return Get_All_The_Players
