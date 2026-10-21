#Triggers when a player holds the guide. Store whether sendCommandFeedback is enabled or not, and hide it if so.
execute store result score $GuideFeedback Math run gamerule sendCommandFeedback
execute if score $GuideFeedback Math matches 1 run gamerule sendCommandFeedback false
data modify storage world GuideHeld set value 1