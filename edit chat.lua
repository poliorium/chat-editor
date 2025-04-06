--poliorium 4/6/25
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local localPlayer = Players.LocalPlayer
TextChatService.OnIncomingMessage = function(message)
    if message.TextSource and message.TextSource.UserId == localPlayer.UserId then
        local messageId = message.MessageId  
        wait(2)
        replicatesignal(game.TextChatService.ClientToServerMessageReplicateSignalV2,
            "edited message",
            "b",
            messageId, 
            TextChatService.TextChannels.RBXGeneral[localPlayer.Name],  
            TextChatService.TextChannels.RBXGeneral
        )
    end
end
