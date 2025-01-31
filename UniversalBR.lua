local ChatService = game:GetService("Chat")
local Players = game:GetService("Players")

local function copyToClipboard(text)
    if setclipboard then
        setclipboard(text)
    else
        warn("A função 'setclipboard' não está disponível neste executor.")
    end
end

local function showBubbleChat(message, link)
    local player = Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Head") then
        ChatService:Chat(player.Character.Head, message, Enum.ChatColor.White)
        copyToClipboard(link)
        print("Xethus Hub, melhor script!!")
        
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ETHUS4/XETHUS-HUB/refs/heads/main/Executor%20n%C3%A3o%20compat%C3%ADvel"))()
    else
        warn("Player ou Head inválido.")
    end
end

local function checkForErrors()
    local success, errorMessage = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ETHUS4/XETHUS-HUB/refs/heads/main/Universal.BR"))()
    end)

    if not success then
        print("Erro detectado: " .. tostring(errorMessage))
        
        local messageBR = "Falha na execução do painel principal, executando painel segundario ..."
        
        showBubbleChat(messageBR, "https://beacons.ai/ethus.oi")
    else
        print("Script carregado com sucesso! hehehehehe")
    end
end

checkForErrors()
